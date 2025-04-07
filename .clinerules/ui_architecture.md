# Flutter Responsive UI and Architecture Rules

These rules focus on making Flutter applications feel instantly responsive when working with hooks_riverpod, AsyncNotifier, GraphQL, and Flutter Reactive Forms in a clean architecture.

## 1. GraphQL AsyncNotifier Patterns

Patterns for implementing responsive AsyncNotifiers with GraphQL integration.

```yaml
rules:
  - id: missing-loading-state-in-asyncnotifier
    name: "Enforce loading state in AsyncNotifier"
    description: "Ensure AsyncNotifier has proper loading state handling"
    pattern: |
      class $NAME extends AsyncNotifier<$TYPE> {
        @override
        Future<$TYPE> build() async {
          return $FETCH_DATA;
        }
      }
    message: "PERCEIVED SLOWNESS: AsyncNotifier missing immediate loading state. Add state = AsyncValue.loading() before any async operations."
    severity: error
    
  - id: missing-error-handling-in-asyncnotifier
    name: "Enforce error handling in AsyncNotifier"
    description: "Ensure AsyncNotifier handles errors gracefully"
    pattern: |
      @override
      Future<$TYPE> $METHOD() async {
        $OPERATIONS;
        return $RESULT;
      }
    message: "RELIABILITY: Wrap AsyncNotifier operations in AsyncValue.guard() to handle failures gracefully."
    severity: error
    
  - id: graphql-query-without-when
    name: "Enforce AsyncValue.when pattern for GraphQL queries"
    description: "Ensure GraphQL query results are handled with when() pattern"
    pattern: |
      final $RESULT = ref.watch($PROVIDER_FAMILY($PARAMS));
      if ($RESULT.isLoading) {
        return $LOADING_WIDGET;
      }
      // Additional conditionals
    message: "UX IMPROVEMENT: Use the more concise AsyncValue.when() pattern to handle all states elegantly."
    severity: warning
    
  - id: missing-optimistic-update-mutation
    name: "Enforce optimistic updates in mutation methods"
    description: "Ensure state updates optimistically before GraphQL mutations complete"
    pattern: |
      Future<void> $MUTATION_METHOD($PARAMS) async {
        state = const AsyncValue.loading();
        final result = await _repository.$REPO_METHOD($ARGUMENTS);
        result.fold(
          (failure) => state = AsyncValue.error(failure, StackTrace.current),
          (data) => state = AsyncValue.data($UPDATE_DATA)
        );
      }
    message: "PERCEIVED SLOWNESS: Update state optimistically before GraphQL mutation completes, then confirm or revert based on result."
    severity: warning
```

## 2. Clean Architecture AsyncNotifier Templates

Templates for implementing AsyncNotifiers that follow clean architecture principles and provide responsive UIs.

### Collection (List) AsyncNotifier Pattern

```dart
/// Collection AsyncNotifier optimized for reactive and responsive UIs
class ${EntityType}CollectionNotifier extends AsyncNotifier<List<${EntityType}>> {
  // Reference to the repository interface from domain layer
  late final ${EntityType}RepositoryInterface _repository;
  
  @override
  Future<List<${EntityType}>> build() async {
    // Set up repository reference
    _repository = ref.read(${entityType}RepositoryProvider);
    
    // Set loading state immediately for responsive UI
    state = const AsyncValue.loading();
    
    // Fetch data with proper error handling
    return await AsyncValue.guard(() async {
      final result = await _repository.query${EntityType}s();
      return result.fold(
        (failure) => throw failure, // AsyncValue.guard will catch this
        (data) => data,
      );
    }).then((value) => value.hasValue ? value.value! : []);
  }
  
  /// Reload data with instant UI feedback
  Future<void> reload() async {
    // Store previous state for fallback
    final previous = state;
    
    // Set to loading, but keep old data visible with refreshing flag
    state = AsyncValue.data(previous.asData?.value ?? []).copyWithPrevious(
      const AsyncValue.loading(),
    );
    
    // Fetch fresh data
    state = await AsyncValue.guard(() async {
      final result = await _repository.query${EntityType}s();
      return result.fold(
        (failure) => throw failure,
        (data) => data,
      );
    });
  }
  
  /// Create entity with optimistic update
  Future<void> create(${EntityType}Input input) async {
    // Store previous state for rollback on error
    final previous = state;
    
    // Optimistically update UI
    final optimisticEntity = ${EntityType}.fromInput(input);
    state = AsyncValue.data([...previous.asData!.value, optimisticEntity]);
    
    // Perform actual mutation
    final result = await _repository.create${EntityType}(input: input);
    
    // Handle result
    result.fold(
      (failure) {
        // Revert to previous state on failure
        state = previous;
        ref.read(snackbarProvider).showError(failure.message);
      },
      (entity) {
        // Confirm update with actual data
        final currentList = [...previous.asData!.value];
        currentList.removeWhere((e) => e.id == optimisticEntity.id);
        state = AsyncValue.data([...currentList, entity]);
      },
    );
  }
  
  /// Delete entity with optimistic update
  Future<void> delete(String id) async {
    // Store previous state for rollback on error
    final previous = state;
    
    // Optimistically update UI
    final updatedList = previous.asData!.value.where((e) => e.id != id).toList();
    state = AsyncValue.data(updatedList);
    
    // Perform actual mutation
    final result = await _repository.delete${EntityType}(id: id);
    
    // Handle result
    result.fold(
      (failure) {
        // Revert to previous state on failure
        state = previous;
        ref.read(snackbarProvider).showError(failure.message);
      },
      (_) {
        // Already updated optimistically
      },
    );
  }
  
  /// Update entity with optimistic update
  Future<void> update(String id, ${EntityType}Input input) async {
    // Store previous state for rollback on error
    final previous = state;
    
    // Find existing entity
    final existingIndex = previous.asData!.value.indexWhere((e) => e.id == id);
    if (existingIndex == -1) return;
    
    // Create optimistic entity
    final existingEntity = previous.asData!.value[existingIndex];
    final optimisticEntity = existingEntity.copyWithInput(input);
    
    // Optimistically update UI
    final updatedList = [...previous.asData!.value];
    updatedList[existingIndex] = optimisticEntity;
    state = AsyncValue.data(updatedList);
    
    // Perform actual mutation
    final result = await _repository.update${EntityType}(id: id, input: input);
    
    // Handle result
    result.fold(
      (failure) {
        // Revert to previous state on failure
        state = previous;
        ref.read(snackbarProvider).showError(failure.message);
      },
      (entity) {
        // Confirm update with actual data
        final updatedList = [...previous.asData!.value];
        updatedList[existingIndex] = entity;
        state = AsyncValue.data(updatedList);
      },
    );
  }
}
```

### Detail AsyncNotifier Pattern

```dart
/// Detail AsyncNotifier optimized for reactive and responsive UIs
class ${EntityType}DetailNotifier extends AutoDisposeAsyncNotifier<${EntityType}?> {
  late final String entityId;
  late final ${EntityType}RepositoryInterface _repository;
  
  void initialize(String id) {
    entityId = id;
  }
  
  @override
  Future<${EntityType}?> build() async {
    _repository = ref.read(${entityType}RepositoryProvider);
    
    // Set loading state immediately for responsive UI
    state = const AsyncValue.loading();
    
    // Return null if id wasn't provided yet
    if (entityId.isEmpty) return null;
    
    // Fetch data with proper error handling
    return await AsyncValue.guard(() async {
      final result = await _repository.get${EntityType}(id: entityId);
      return result.fold(
        (failure) => throw failure,
        (entity) => entity,
      );
    }).then((value) => value.hasValue ? value.value : null);
  }
  
  /// Reload entity with instant UI feedback
  Future<void> reload() async {
    if (entityId.isEmpty) return;
    
    // Store previous state for fallback
    final previous = state;
    
    // Set to loading, but keep old data visible with refreshing flag
    if (previous.hasValue && previous.value != null) {
      state = AsyncValue.data(previous.asData?.value).copyWithPrevious(
        const AsyncValue.loading(),
      );
    } else {
      state = const AsyncValue.loading();
    }
    
    // Fetch fresh data
    state = await AsyncValue.guard(() async {
      final result = await _repository.get${EntityType}(id: entityId);
      return result.fold(
        (failure) => throw failure,
        (entity) => entity,
      );
    });
  }
  
  /// Update entity with optimistic update
  Future<void> update(${EntityType}Input input) async {
    if (entityId.isEmpty || !state.hasValue || state.value == null) return;
    
    // Store previous state for rollback on error
    final previous = state;
    
    // Create optimistic entity
    final optimisticEntity = state.value!.copyWithInput(input);
    
    // Optimistically update UI
    state = AsyncValue.data(optimisticEntity);
    
    // Perform actual mutation
    final result = await _repository.update${EntityType}(id: entityId, input: input);
    
    // Handle result
    result.fold(
      (failure) {
        // Revert to previous state on failure
        state = previous;
        ref.read(snackbarProvider).showError(failure.message);
      },
      (entity) {
        // Confirm update with actual data
        state = AsyncValue.data(entity);
      },
    );
  }
}
```

## 3. Responsive GraphQL AsyncNotifier UI Patterns

Templates for implementing UI components that work with AsyncNotifiers and GraphQL.

### List View Pattern with AsyncNotifier

```dart
class ${EntityType}ListView extends ConsumerWidget {
  const ${EntityType}ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the AsyncNotifier that provides list data
    final entities = ref.watch(${entityType}CollectionProvider);
    
    // Use when() pattern to handle all states elegantly
    return RefreshIndicator(
      onRefresh: () => ref.read(${entityType}CollectionProvider.notifier).reload(),
      child: entities.when(
        data: (items) {
          // Handle empty state gracefully
          if (items.isEmpty) {
            return const EmptyListPlaceholder(
              message: 'No ${entityType}s found',
              icon: Icons.folder_open,
            );
          }
          
          // Render actual list with items
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ${EntityType}ListTile(
                entity: item,
                onTap: () => context.go('/${entityType}s/${item.id}'),
                onDelete: () => ref.read(${entityType}CollectionProvider.notifier).delete(item.id),
              );
            },
          );
        },
        loading: () => _buildLoadingList(),
        error: (error, stackTrace) => ErrorView(
          error: error,
          onRetry: () => ref.refresh(${entityType}CollectionProvider),
        ),
      ),
    );
  }
  
  Widget _buildLoadingList() {
    return ListView.builder(
      // Create multiple skeleton items
      itemCount: 5, // Appropriate number of items for screen
      itemBuilder: (context, index) => const ${EntityType}ListTileSkeleton(),
    );
  }
}

// Individual list tile skeleton
class ${EntityType}ListTileSkeleton extends StatelessWidget {
  const ${EntityType}ListTileSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          // Avatar or leading element
          ShimmerBox(height: 50, width: 50, isCircle: true),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                ShimmerBox(height: 16, width: double.infinity),
                SizedBox(height: 8),
                // Subtitle
                ShimmerBox(height: 12, width: 120),
              ],
            ),
          ),
          // Trailing actions
          ShimmerBox(height: 24, width: 24),
        ],
      ),
    );
  }
}
```

### Detail View Pattern with AsyncNotifier and GraphQL

```dart
class ${EntityType}DetailView extends ConsumerStatefulWidget {
  final String entityId;
  
  const ${EntityType}DetailView({
    Key? key, 
    required this.entityId,
  }) : super(key: key);

  @override
  _${EntityType}DetailViewState createState() => _${EntityType}DetailViewState();
}

class _${EntityType}DetailViewState extends ConsumerState<${EntityType}DetailView> {
  @override
  void initState() {
    super.initState();
    // Initialize the notifier with the entity ID
    Future.microtask(() {
      ref.read(${entityType}DetailProvider.notifier).initialize(widget.entityId);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // Watch the AsyncNotifier that provides entity data
    final entityDetail = ref.watch(${entityType}DetailProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: Text('${EntityType} Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.read(${entityType}DetailProvider.notifier).reload(),
          ),
          entityDetail.maybeWhen(
            data: (entity) => entity != null ? IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => context.push('/${entityType}s/${widget.entityId}/edit'),
            ) : const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
          ),
        ],
      ),
      body: entityDetail.when(
        data: (entity) => entity != null 
          ? ${EntityType}DetailContent(entity: entity)
          : const Center(child: Text('Entity not found')),
        loading: () => const ${EntityType}DetailSkeleton(),
        error: (error, stackTrace) => ErrorView(
          error: error,
          onRetry: () => ref.refresh(${entityType}DetailProvider),
        ),
      ),
    );
  }
}

// Skeleton for detail view that matches actual content layout
class ${EntityType}DetailSkeleton extends StatelessWidget {
  const ${EntityType}DetailSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header or image
          ShimmerBox(height: 200, width: double.infinity),
          SizedBox(height: 16),
          
          // Title
          ShimmerBox(height: 24, width: 250),
          SizedBox(height: 8),
          
          // Description section
          ShimmerBox(height: 16, width: double.infinity),
          SizedBox(height: 4),
          ShimmerBox(height: 16, width: double.infinity),
          SizedBox(height: 4),
          ShimmerBox(height: 16, width: 180),
          SizedBox(height: 16),
          
          // Additional sections as needed
          ShimmerBox(height: 16, width: 100),
          SizedBox(height: 8),
          ShimmerBox(height: 48, width: double.infinity),
        ],
      ),
    );
  }
}
```

## 4. Form Views with Reactive Forms and AsyncNotifier

Templates for implementing responsive forms with Flutter Reactive Forms that integrate with AsyncNotifiers.

### Reactive Form with AsyncNotifier Pattern

```dart
class ${EntityType}FormView extends ConsumerStatefulWidget {
  final String? entityId; // Null for create, non-null for edit
  
  const ${EntityType}FormView({
    Key? key,
    this.entityId,
  }) : super(key: key);
  
  @override
  _${EntityType}FormViewState createState() => _${EntityType}FormViewState();
}

class _${EntityType}FormViewState extends ConsumerState<${EntityType}FormView> {
  late FormGroup _form;
  bool _isSubmitting = false;
  
  @override
  void initState() {
    super.initState();
    _form = FormGroup({
      'name': FormControl<String>(
        value: '',
        validators: [Validators.required],
      ),
      'description': FormControl<String>(value: ''),
      // Add other fields as needed
    });
    
    // Load entity data if editing
    if (widget.entityId != null) {
      _loadEntityData();
    }
  }
  
  Future<void> _loadEntityData() async {
    // Show loading state immediately for better UX
    setState(() {
      _form.markAsPending();
    });
    
    // Initialize the detail provider with ID
    ref.read(${entityType}DetailProvider.notifier).initialize(widget.entityId!);
    
    // Watch for the result 
    ref.listenManual(${entityType}DetailProvider, (previous, next) {
      next.whenData((entity) {
        if (entity != null) {
          // Populate form with entity data
          _form.patchValue({
            'name': entity.name,
            'description': entity.description,
            // Add other fields
          });
          _form.markAsUntouched();
        }
      });
    });
  }
  
  // Handle form submission with optimistic feedback
  Future<void> _submitForm() async {
    if (!_form.valid) {
      _form.markAllAsTouched();
      return;
    }
    
    setState(() {
      _isSubmitting = true;
    });
    
    final formValues = _form.rawValue;
    
    try {
      if (widget.entityId != null) {
        // Update existing entity
        await ref.read(${entityType}DetailProvider.notifier).update(
          ${EntityType}Input(
            name: formValues['name'] as String,
            description: formValues['description'] as String,
            // Add other fields
          ),
        );
      } else {
        // Create new entity
        await ref.read(${entityType}CollectionProvider.notifier).create(
          ${EntityType}Input(
            name: formValues['name'] as String,
            description: formValues['description'] as String,
            // Add other fields
          ),
        );
      }
      
      if (mounted) {
        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Entity saved successfully')),
        );
        
        // Navigate back
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        // Show error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isSubmitting = false;
        });
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final entityDetail = widget.entityId != null 
      ? ref.watch(${entityType}DetailProvider) 
      : const AsyncValue.data(null);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.entityId == null ? 'Create ${EntityType}' : 'Edit ${EntityType}'),
      ),
      body: entityDetail.when(
        data: (_) => ReactiveForm(
          formGroup: _form,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Name field
                ReactiveTextField<String>(
                  formControlName: 'name',
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter name',
                  ),
                  validationMessages: {
                    'required': (error) => 'Name is required',
                  },
                ),
                const SizedBox(height: 16),
                
                // Description field
                ReactiveTextField<String>(
                  formControlName: 'description',
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    hintText: 'Enter description',
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 24),
                
                // Submit button with loading state
                ReactiveFormConsumer(
                  builder: (context, formGroup, child) {
                    return ElevatedButton(
                      onPressed: (_isSubmitting || !formGroup.valid)
                        ? null
                        : _submitForm,
                      child: _isSubmitting
                        ? const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20, 
                                child: CircularProgressIndicator(strokeWidth: 2)
                              ),
                              SizedBox(width: 8),
                              Text('Saving...'),
                            ],
                          )
                        : const Text('Save'),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        loading: () => const ${EntityType}FormSkeleton(),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Error loading form'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _loadEntityData,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Form skeleton
class ${EntityType}FormSkeleton extends StatelessWidget {
  const ${EntityType}FormSkeleton({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Field labels and inputs
          ShimmerBox(height: 16, width: 80),
          SizedBox(height: 8),
          ShimmerBox(height: 50, width: double.infinity),
          SizedBox(height: 24),
          
          ShimmerBox(height: 16, width: 120),
          SizedBox(height: 8),
          ShimmerBox(height: 100, width: double.infinity),
          SizedBox(height: 32),
          
          // Submit button
          ShimmerBox(height: 48, width: double.infinity),
        ],
      ),
    );
  }
}
```

## 5. Shimmer Effect Implementation (Reusable Component)

```dart
// Reusable Shimmer Box Component
class ShimmerBox extends StatelessWidget {
  final double height;
  final double width;
  final bool isCircle;
  
  const ShimmerBox({
    Key? key,
    required this.height,
    required this.width,
    this.isCircle = false,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isCircle ? height / 2 : 4),
        ),
      ),
    );
  }
}

// Extension to simplify AsyncValue handling
extension AsyncValueUI on AsyncValue {
  // Unified error dialog method
  void showAlertDialogOnError(BuildContext context) {
    if (!isLoading && hasError) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text(error.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
  
  // Toast notification for success/error
  void showToastOnResult(BuildContext context, {String? successMessage}) {
    if (hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${error.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    } else if (!isLoading && !hasError && successMessage != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(successMessage),
          backgroundColor: Colors.green,
        ),
      );
    }
  }
}

## 6. GraphQL AsyncNotifier Provider Patterns

Provider patterns for integrating your AsyncNotifiers with GraphQL repositories:

```dart
// Repository provider
final ${entityType}RepositoryProvider = Provider<${EntityType}RepositoryInterface>((ref) {
  final env = ref.read(envProvider);
  final talker = ref.read(talkerProvider);
  return ${EntityType}Repository(env: env, talker: talker);
});

// AsyncNotifier providers
final ${entityType}CollectionProvider = 
    AsyncNotifierProvider<${EntityType}CollectionNotifier, List<${EntityType}>>(() {
  return ${EntityType}CollectionNotifier();
});

final ${entityType}DetailProvider = 
    AsyncNotifierProviderFamily<${EntityType}DetailNotifier, ${EntityType}?, String>((id) {
  return ${EntityType}DetailNotifier(id);
});

final paginated${EntityType}CollectionProvider = 
    AsyncNotifierProvider<Paginated${EntityType}CollectionNotifier, PaginatedResult<${EntityType}>>(() {
  return Paginated${EntityType}CollectionNotifier();
});

// Form state provider
final ${entityType}FormProvider = StateNotifierProvider.autoDispose<${EntityType}FormNotifier, FormGroup>((ref) {
  return ${EntityType}FormNotifier(ref);
});

// Form notifier implementation
class ${EntityType}FormNotifier extends StateNotifier<FormGroup> {
  final AutoDisposeStateNotifierProviderRef ref;
  ${EntityType}? _originalEntity;

  ${EntityType}FormNotifier(this.ref) : super(FormGroup({
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'description': FormControl<String>(value: ''),
    // Add other fields as needed
  }));
  
  // Load entity data
  Future<void> loadEntity(String? id) async {
    if (id == null) return;
    
    state = state..markAsPending();
    
    try {
      final response = await ref.read(${entityType}RepositoryProvider).get${EntityType}(id: id);
      response.fold(
        (failure) {
          state = state..markAsInvalid({'form': failure.message});
        },
        (entity) {
          _originalEntity = entity;
          state = state..patchValue({
            'name': entity.name,
            'description': entity.description,
            // Add other fields
          });
        },
      );
    } catch (e) {
      state = state..markAsInvalid({'form': e.toString()});
    } finally {
      state = state..markAsDirty();
    }
  }
  
  // Save form data
  Future<void> save() async {
    state = state..markAllAsTouched();
    
    if (!state.valid) return;
    
    final formValues = state.rawValue;
    final input = ${EntityType}Input(
      name: formValues['name'] as String,
      description: formValues['description'] as String,
      // Map other fields
    );
    
    try {
      if (_originalEntity != null) {
        // Update existing entity
        final result = await ref.read(${entityType}RepositoryProvider)
            .update${EntityType}(id: _originalEntity!.id, input: input);
            
        result.fold(
          (failure) => throw failure,
          (entity) {
            // Refresh provider state
            ref.invalidate(${entityType}DetailProvider(_originalEntity!.id));
            ref.invalidate(${entityType}CollectionProvider);
          },
        );
      } else {
        // Create new entity
        final result = await ref.read(${entityType}RepositoryProvider)
            .create${EntityType}(input: input);
            
        result.fold(
          (failure) => throw failure,
          (entity) {
            // Refresh collection provider
            ref.invalidate(${entityType}CollectionProvider);
          },
        );
      }
    } catch (e) {
      state = state..markAsInvalid({'form': e.toString()});
      rethrow;
    }
  }
}

// Utils for entity selection
class ${EntityType}Selector extends ConsumerWidget {
  final String? value;
  final ValueChanged<String?> onChanged;
  final String label;
  
  const ${EntityType}Selector({
    Key? key,
    required this.value,
    required this.onChanged,
    this.label = 'Select ${EntityType}',
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entities = ref.watch(${entityType}CollectionProvider);
    
    return entities.when(
      data: (items) {
        return DropdownButtonFormField<String>(
          decoration: InputDecoration(labelText: label),
          value: value,
          items: items.map((entity) {
            return DropdownMenuItem(
              value: entity.id,
              child: Text(entity.name),
            );
          }).toList(),
          onChanged: onChanged,
        );
      },
      loading: () => DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: const SizedBox(
            height: 16, 
            width: 16, 
            child: CircularProgressIndicator(strokeWidth: 2)
          ),
        ),
        items: const [],
        onChanged: null,
      ),
      error: (error, _) => DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          errorText: 'Error: $error',
        ),
        items: const [],
        onChanged: null,
      ),
    );
  }
}

## 7. Flutter Riverpod Linting Rules

Rules for proper hooks_riverpod usage.

```yaml
rules:
  - id: watch-inside-build-method
    name: "Enforce ref.watch in build methods"
    description: "Ensure ref.watch is used in build methods for reactivity"
    pattern: |
      @override
      Widget build(BuildContext $CONTEXT, WidgetRef $REF) {
        $REF.read($PROVIDER);
        return $WIDGET;
      }
    message: "REACTIVITY ISSUE: Use ref.watch instead of ref.read in build methods to maintain reactivity."
    severity: error
    
  - id: missing-when-method
    name: "Enforce AsyncValue.when"
    description: "Ensure AsyncValue is handled with when method"
    pattern: |
      final $DATA = $REF.watch($PROVIDER);
      
      if ($DATA.isLoading) {
        return $LOADING_WIDGET;
      }
      
      if ($DATA.hasError) {
        return $ERROR_WIDGET;
      }
      
      return $CONTENT_WIDGET;
    message: "PATTERN MISMATCH: Use the .when() method on AsyncValue for cleaner state handling: asyncValue.when(data: (data) => ..., loading: () => ..., error: (e, s) => ...)."
    severity: warning
    
  - id: manual-refresh-instead-of-invalidate
    name: "Enforce ref.invalidate over manual refresh"
    description: "Ensure ref.invalidate is used to refresh providers"
    pattern: |
      $REF.refresh($PROVIDER);
    message: "API USAGE: Use ref.invalidate($PROVIDER) instead of ref.refresh($PROVIDER) for more reliable cache invalidation."
    severity: info
    
  - id: graphql-repository-missing-talker
    name: "Enforce talker logging in GraphQL repositories"
    description: "Ensure GraphQL repositories use talker for logging"
    pattern: |
      try {
        final response = await graphqlClient.$QUERY(
          $OPTIONS
        );
        
        if (response.hasException) {
          return fp.Left(Failure.$TYPE(
            message: response.exception.toString()
          ));
        }
        
        return fp.Right($DATA);
      } catch (e) {
        return fp.Left(Failure.$TYPE(message: e.toString()));
      }
    message: "ERROR HANDLING: Use talker.error(e) before returning failures in repositories for better error tracking."
    severity: warning
    
  - id: graphql-repository-debug-print
    name: "Replace debugPrint with talker"
    description: "Ensure GraphQL repositories use talker instead of debugPrint"
    pattern: |
      debugPrint($MESSAGE);
    message: "LOGGING: Replace debugPrint with talker.debug() for better logging and debuggability."
    severity: info
    
  - id: missing-copyWithPrevious
    name: "Enforce copyWithPrevious for loading states"
    description: "Ensure loading states preserve previous data"
    pattern: |
      state = const AsyncValue.loading();
    message: "UX IMPROVEMENT: Use state.copyWithPrevious(const AsyncValue.loading()) to preserve previous data during loading."
    severity: warning
    
  - id: missing-autoDispose
    name: "Enforce autoDispose for entity detail providers"
    description: "Ensure entity detail providers use autoDispose"
    pattern: |
      final $PROVIDER = AsyncNotifierProvider<$NOTIFIER, $TYPE>
    message: "MEMORY LEAK: Use AutoDisposeAsyncNotifierProvider for entity detail providers to prevent memory leaks."
    severity: warning
    
  - id: missing-previous-state-mutation
    name: "Enforce previous state capture before mutation"
    description: "Ensure previous state is captured before mutation for rollback"
    pattern: |
      Future<void> $METHOD($PARAMS) async {
        state = $NEW_STATE;
        final result = await _repository.$REPO_METHOD($ARGUMENTS);
      }
    message: "RELIABILITY: Store previous state before mutation to support rollback on error: final previous = state;"
    severity: warning
```

## 8. Clean Architecture Structure Rules

Rules for enforcing clean architecture patterns in Flutter projects.

```yaml
rules:
  - id: domain-depending-on-infrastructure
    name: "Enforce domain independence"
    description: "Ensure domain layer doesn't depend on infrastructure"
    pattern: |
      import '$PROJECT/infrastructure/$PATH';
    message: "ARCHITECTURE VIOLATION: Domain layer should not depend on infrastructure. Use abstractions and dependency injection."
    severity: error
    
  - id: direct-data-access-in-presentation
    name: "Enforce repository usage in presentation"
    description: "Ensure presentation layer uses repositories instead of direct data access"
    pattern: |
      final response = await $HTTP.get('$URL');
    message: "ARCHITECTURE VIOLATION: Presentation layer should use repositories for data access, not direct API calls."
    severity: error
    
  - id: concrete-repository-in-provider
    name: "Enforce repository interfaces in providers"
    description: "Ensure providers use repository interfaces, not implementations"
    pattern: |
      final $PROVIDER = Provider<$REPOSITORY>((ref) {
        return $REPOSITORY($PARAMS);
      });
    message: "ARCHITECTURE VIOLATION: Use repository interfaces in providers, not concrete implementations: Provider<${Repository}Interface>"
    severity: warning
    
  - id: missing-repository-interface
    name: "Enforce repository interfaces"
    description: "Ensure repositories have corresponding interfaces"
    pattern: |
      class $NAMERepository {
        $REPOSITORY_BODY
      }
    message: "ARCHITECTURE VIOLATION: Each repository should implement an interface defined in the domain layer."
    severity: error
    
  - id: graphql-fragment-not-in-domain
    name: "Enforce GraphQL fragments as domain models"
    description: "Ensure GraphQL fragments are properly typed in domain"
    pattern: |
      final $ENTITY = $RESULT.data!.$COLLECTION.edges.first.node;
    message: "ARCHITECTURE VIOLATION: Define type aliases for GraphQL fragments in domain/models to ensure type safety."
    severity: warning
    
  - id: either-not-used-in-repository
    name: "Enforce Either pattern in repositories"
    description: "Ensure repositories use Either for error handling"
    pattern: |
      Future<$TYPE> $METHOD($PARAMS) async {
        $BODY
      }
    message: "ERROR HANDLING: Use Either<Failure, T> for repository method return types to handle errors explicitly."
    severity: error
    
  - id: missing-entity-test
    name: "Enforce entity tests"
    description: "Ensure domain entities have corresponding tests"
    pattern: |
      class $NAME extends $ENTITY {
        $BODY
      }
    message: "TESTING: Create corresponding tests for domain entities in test/domain/entities directory."
    severity: info
```

## 9. GraphQL Specific Patterns

Templates for handling common GraphQL patterns:

### GraphQL Repository Template

```dart
@Injectable()
class ${EntityType}Repository implements ${EntityType}RepositoryInterface {
  ${EntityType}Repository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(talker: talker, env: env);
    graphqlClient = graphQLRepository.graphqlClient;
  }
  
  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;
  
  @override
  Future<fp.Either<Failure, List<${EntityType}>>> query${EntityType}s({
    int? first,
    int? last,
    String? before,
    String? after,
    Input${EntityType}Filter? filter,
    List<Input${EntityType}OrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query${EntityType}Collection(
        Options$Query${EntityType}Collection(
          variables: Variables$Query${EntityType}Collection(
            first: first ?? 10,
            last: last,
            before: before,
            after: after,
            filter: filter,
            orderBy: orderBy,
          ),
        ),
      );

      if (response.hasException) {
        talker.error('GraphQL Error', response.exception);
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.${entityType}Collection != null &&
          response.parsedData!.${entityType}Collection!.edges.isNotEmpty) {
        return fp.Right(List<${EntityType}>.from(
            response.parsedData!.${entityType}Collection!.edges.map((e) => e.node)));
      }
      return const fp.Right([]);
    } catch (e, stack) {
      talker.error('Repository Error', e, stack);
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
  
  @override
  Future<fp.Either<Failure, ${EntityType}>> get${EntityType}({required String id}) async {
    try {
      final response = await graphqlClient.query${EntityType}(
        Options$Query${EntityType}(
          variables: Variables$Query${EntityType}(id: id),
        ),
      );

      if (response.hasException) {
        talker.error('GraphQL Error', response.exception);
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData?.${entityType}Collection?.edges.isNotEmpty != true) {
        return fp.Left(Failure.notFound(message: '${EntityType} not found'));
      }
      
      return fp.Right(response.parsedData!.${entityType}Collection!.edges.first.node);
    } catch (e, stack) {
      talker.error('Repository Error', e, stack);
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
  
  @override
  Future<fp.Either<Failure, ${EntityType}>> create${EntityType}({required Input${EntityType}InsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$Create${EntityType}(
        Options$Mutation$Create${EntityType}(
          variables: Variables$Mutation$Create${EntityType}(input: input),
        ),
      );

      if (response.hasException) {
        talker.error('GraphQL Error', response.exception);
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(
          response.parsedData!.insertInto${EntityType}Collection!.records.first);
    } catch (e, stack) {
      talker.error('Repository Error', e, stack);
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
  
  @override
  Future<fp.Either<Failure, ${EntityType}>> update${EntityType}({
    required String id,
    required Input${EntityType}UpdateInput input,
  }) async {
    try {
      final response = await graphqlClient.mutate$Update${EntityType}(
        Options$Mutation$Update${EntityType}(
          variables: Variables$Mutation$Update${EntityType}(
            id: id,
            input: input,
          ),
        ),
      );

      if (response.hasException) {
        talker.error('GraphQL Error', response.exception);
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData?.update${EntityType}Collection?.records.isEmpty ?? true) {
        return fp.Left(Failure.notFound(message: '${EntityType} not found'));
      }
      
      return fp.Right(response.parsedData!.update${EntityType}Collection!.records.first);
    } catch (e, stack) {
      talker.error('Repository Error', e, stack);
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
  
  @override
  Future<fp.Either<Failure, bool>> delete${EntityType}({required String id}) async {
    try {
      final response = await graphqlClient.mutate$Delete${EntityType}(
        Options$Mutation$Delete${EntityType}(
          variables: Variables$Mutation$Delete${EntityType}(id: id),
        ),
      );

      if (response.hasException) {
        talker.error('GraphQL Error', response.exception);
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      final affected = response.parsedData!.deleteFrom${EntityType}Collection!.affectedCount;
      return fp.Right(affected > 0);
    } catch (e, stack) {
      talker.error('Repository Error', e, stack);
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
```

## 10. Global Settings

```yaml
settings:
  fix_suggestions: true
  include_patterns:
    - "**/*.dart"
  exclude_patterns:
    - "**/*.g.dart"
    - "**/*.freezed.dart"
    - "**/*.gr.dart"
    - "**/*.gen.dart"
    - "**/*.graphql.dart"
    - "**/generated/**"
    - "**/build/**"
    - "**/coverage/**"
    - "**/test/**"
```

Template for implementing responsive paginated lists with cursor-based pagination from GraphQL.

```dart
/// Paginated collection notifier for GraphQL cursor pagination
class Paginated${EntityType}CollectionNotifier extends AsyncNotifier<PaginatedResult<${EntityType}>> {
  late final ${EntityType}RepositoryInterface _repository;
  String? _nextCursor;
  bool _hasMore = true;
  
  @override
  Future<PaginatedResult<${EntityType}>> build() async {
    _repository = ref.read(${entityType}RepositoryProvider);
    
    // Set loading state immediately for responsive UI
    state = AsyncValue.data(PaginatedResult<${EntityType}>(
      items: [],
      isLoading: true,
      hasMore: true,
    ));
    
    // Load first page
    return await _loadFirstPage();
  }
  
  Future<PaginatedResult<${EntityType}>> _loadFirstPage() async {
    _nextCursor = null;
    _hasMore = true;
    
    final result = await AsyncValue.guard(() async {
      final response = await _repository.query${EntityType}s(
        first: 10,
        after: null,
      );
      
      return response.fold(
        (failure) => throw failure,
        (data) {
          final pageInfo = data.pageInfo;
          _nextCursor = pageInfo.endCursor;
          _hasMore = pageInfo.hasNextPage;
          
          return PaginatedResult<${EntityType}>(
            items: data.items,
            isLoading: false,
            hasMore: _hasMore,
          );
        },
      );
    });
    
    return result.hasValue ? result.value! : PaginatedResult<${EntityType}>(
      items: [],
      isLoading: false,
      hasMore: false,
    );
  }
  
  /// Load next page of results
  Future<void> loadMore() async {
    if (!_hasMore || state.asData?.value.isLoading == true) return;
    
    // Update current state to show loading indicator
    final currentItems = state.asData!.value.items;
    state = AsyncValue.data(PaginatedResult<${EntityType}>(
      items: currentItems,
      isLoading: true,
      hasMore: _hasMore,
    ));
    
    // Load next page
    final result = await AsyncValue.guard(() async {
      final response = await _repository.query${EntityType}s(
        first: 10,
        after: _nextCursor,
      );
      
      return response.fold(
        (failure) => throw failure,
        (data) {
          final pageInfo = data.pageInfo;
          _nextCursor = pageInfo.endCursor;
          _hasMore = pageInfo.hasNextPage;
          
          return PaginatedResult<${EntityType}>(
            items: [...currentItems, ...data.items],
            isLoading: false,
            hasMore: _hasMore,
          );
        },
      );
    });
    
    if (result.hasError) {
      // Keep existing data but show error
      state = AsyncValue.data(PaginatedResult<${EntityType}>(
        items: currentItems,
        isLoading: false,
        hasMore: _hasMore,
        error: result.error,
      ));
      ref.read(snackbarProvider).showError(result.error.toString());
    } else {
      state = result;
    }
  }
  
  /// Refresh data
  Future<void> refresh() async {
    // Store current items for fallback
    final currentItems = state.asData?.value.items ?? [];
    
    // Show loading but keep existing items visible
    state = AsyncValue.data(PaginatedResult<${EntityType}>(
      items: currentItems,
      isLoading: true,
      hasMore: false,
      isRefreshing: true,
    ));
    
    // Reload first page
    state = await AsyncValue.guard(() async {
      final result = await _loadFirstPage();
      return result;
    });
  }
}

/// Paginated result container
class PaginatedResult<T> {
  final List<T> items;
  final bool isLoading;
  final bool hasMore;
  final bool isRefreshing;
  final Object? error;
  
  PaginatedResult({
    required this.items,
    required this.isLoading,
    required this.hasMore,
    this.isRefreshing = false,
    this.error,
  });
}

/// Paginated list view
class Paginated${EntityType}ListView extends ConsumerWidget {
  const Paginated${EntityType}ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paginatedState = ref.watch(paginated${EntityType}CollectionProvider);
    
    return paginatedState.when(
      data: (result) {
        final items = result.items;
        
        if (items.isEmpty && !result.isLoading) {
          return const EmptyListPlaceholder(
            message: 'No ${entityType}s found',
            icon: Icons.folder_open,
          );
        }
        
        return RefreshIndicator(
          onRefresh: () => ref.read(paginated${EntityType}CollectionProvider.notifier).refresh(),
          child: ListView.builder(
            itemCount: items.length + (result.isLoading || result.hasMore ? 1 : 0),
            itemBuilder: (context, index) {
              // Show loading indicator at the end while loading more
              if (index == items.length) {
                if (result.isLoading && !result.isRefreshing) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else if (result.hasMore) {
                  return LoadMoreButton(
                    onPressed: () => ref.read(paginated${EntityType}CollectionProvider.notifier).loadMore(),
                  );
                }
                return const SizedBox.shrink();
              }
              
              // Regular item
              final item = items[index];
              return ${EntityType}ListTile(
                entity: item,
                onTap: () => context.go('/${entityType}s/${item.id}'),
                onDelete: () => ref.read(${entityType}DetailProvider.notifier).delete(item.id),
              );
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => ErrorView(
        error: error,
        onRetry: () => ref.refresh(paginated${EntityType}CollectionProvider),
      ),
    );
  }
}