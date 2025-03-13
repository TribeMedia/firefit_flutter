# AI Reasoning Methods for Flutter Development

This document outlines various reasoning methods that the AI assistant employs when working with Flutter projects. Each method is optimized for specific types of development tasks.

## Reasoning Methods

### 1. Flutter-Specific Chain of Thought (Flutter-CoT)

**Description:** A specialized Chain of Thought method tailored for Flutter development that maps the reasoning process to Flutter's widget hierarchy and reactive programming model.

**Best for:**
- Widget tree design and composition
- State management strategies
- Performance optimization
- UI/UX implementation

**Process:**
1. Analyze the widget hierarchy or component relationships
2. Identify state management requirements (local vs. global)
3. Determine appropriate Flutter patterns (StatelessWidget, StatefulWidget, HookConsumerWidget)
4. Map user requirements to appropriate Flutter components
5. Consider platform-specific behaviors (web, mobile, desktop)

**Example:**
```
Task: Create a settings screen with toggles that save to local storage.

1. Need a StatefulWidget or HookConsumerWidget since we're managing user preferences
2. Will use flutter_hooks and riverpod to manage state across rebuilds 
3. For local storage, we'll need a repository pattern with SharedPreferences
4. UI will consist of ListTile widgets with Switch components
5. Preferences should be loaded on init and saved on changes
```

### 2. Architecture-Oriented Reasoning (AOR)

**Description:** Focuses on clean architecture principles and how code should be organized across layers in a Flutter application.

**Best for:**
- Project structure decisions
- Layer separation (data, domain, presentation)
- Dependency injection
- Repository implementation
- Testing architecture

**Process:**
1. Identify the architectural layers involved
2. Define interfaces and implementations
3. Establish dependency flow (domain → data → presentation)
4. Design error handling and data transformation strategies
5. Consider testability of each component

**Example:**
```
Task: Adding a new feature for user profile management.

1. In domain layer: Define ProfileEntity and ProfileRepository interface
2. In data layer: Create ProfileRepositoryImpl, ProfileDataSource, and ProfileDTO
3. In presentation layer: Build ProfileViewModel and ProfileScreen
4. Use Either<Failure, Success> for error handling at repository level
5. Inject dependencies through Riverpod providers
```

### 3. Flutter Test-Driven Development (Flutter-TDD)

**Description:** Applies test-driven development principles specifically to Flutter codebases.

**Best for:**
- Unit testing of business logic
- Widget testing of UI components
- Integration testing of features
- Behavior-driven development

**Process:**
1. Define expected behavior and edge cases
2. Write tests first (unit, widget, or integration)
3. Implement minimal code to pass tests
4. Refactor while ensuring tests still pass
5. Repeat for each feature component

**Example:**
```
Task: Create authentication flow with validation.

1. Write tests for email/password validators
2. Write tests for auth repository interaction
3. Write tests for AuthViewModel state transitions
4. Write widget tests for auth form validation display
5. Implement each component, ensuring tests pass at each stage
```

### 4. Multi-Platform Reasoning (MPR)

**Description:** Focuses on building Flutter applications that work consistently across multiple platforms while accounting for platform-specific differences.

**Best for:**
- Cross-platform UI design
- Platform-specific feature implementation
- Responsive layouts
- Accessibility considerations

**Process:**
1. Identify common functionality across platforms
2. Detect platform-specific requirements
3. Design responsive UI for different form factors
4. Implement platform-specific adaptations when necessary
5. Verify behavior across target platforms

**Example:**
```
Task: Create a file picker feature that works on all platforms.

1. Use file_picker package as the cross-platform base
2. Identify limitations on web platform (security restrictions)
3. Create platform-specific implementations for iOS, Android, and desktop
4. Design responsive UI that adapts to device type
5. Add fallback mechanisms for unsupported features
```

### 5. Performance-Focused Reasoning (PFR)

**Description:** Optimizes Flutter applications for performance, focusing on rendering efficiency, state management, and resource usage.

**Best for:**
- Addressing jank and frame drops
- Memory optimization
- Startup time improvement
- Animation performance

**Process:**
1. Identify performance bottlenecks
2. Analyze widget rebuild cascades
3. Optimize rendering and layout
4. Implement efficient state management
5. Apply Flutter-specific performance best practices

**Example:**
```
Task: Optimize a list with many items and images.

1. Implement ListView.builder for virtualized rendering
2. Add caching for images using cached_network_image
3. Use const constructors for static widgets
4. Minimize setState calls and expensive operations in build
5. Apply Flutter DevTools insights to validate improvements
```

### 6. Functional Approach with Either (FAE)

**Description:** Applies functional programming principles from fp_dart/dartz to Flutter development, particularly for error handling and side effects.

**Best for:**
- Error handling strategies
- Asynchronous operations
- Data transformation pipelines
- Form validation

**Process:**
1. Model operations as functions that return Either<L, R>
2. Compose functions using map, flatMap, fold
3. Handle errors explicitly through Left values
4. Transform success values through Right
5. Use functional patterns for immutability and predictability

**Example:**
```
Task: Implement user registration with validation.

1. Create ValidatedField<T> type using Either<ValidationError, T>
2. Build validation functions that return Either types
3. Compose validations using flatMap/bind
4. Transform validated input into registration request
5. Handle API response with Either<RegistrationFailure, User>
```

## Decision Tree for Method Selection

Based on the task at hand, the assistant will select the most appropriate reasoning method:

1. **If task involves UI components and their composition**
   - Use **Flutter-CoT**

2. **If task focuses on code organization and dependencies**
   - Use **Architecture-Oriented Reasoning**

3. **If task requires building with tests first**
   - Use **Flutter-TDD**

4. **If task involves multi-platform considerations**
   - Use **Multi-Platform Reasoning**

5. **If task addresses performance issues**
   - Use **Performance-Focused Reasoning**

6. **If task involves error handling and data transformation**
   - Use **Functional Approach with Either**

7. **If task is complex and requires multiple aspects**
   - Use a combination of methods, with clear separation between each phase

## Integration with Flutter Development Cycle

The AI assistant will integrate these reasoning methods into the Flutter development cycle:

1. **Planning Phase**: Architecture-Oriented Reasoning
2. **Implementation Phase**: Flutter-CoT, Functional Approach with Either
3. **Testing Phase**: Flutter-TDD
4. **Optimization Phase**: Performance-Focused Reasoning
5. **Deployment Phase**: Multi-Platform Reasoning

## Specific Riverpod and Hooks Guidance

When working with hooks_riverpod and flutter_hooks, the AI will apply these patterns:

1. **State Management**:
   - Use `useProvider` hook to consume provider state
   - Prefer AsyncNotifier over StateNotifier for async operations
   - Apply functional patterns with AsyncValue for loading/error states

2. **UI Components**:
   - Use HookConsumerWidget for components that need both hooks and providers
   - Apply useState hook for local component state
   - Use useMemoized for expensive computations
   - Implement useEffect for side effects and cleanup

3. **Provider Organization**:
   - Group related providers in provider files
   - Use family providers for parameterized dependencies
   - Apply scoped providers for feature isolation
   - Build provider overrides for testing
