Here's a `.clinerules` markdown file that enforces best practices for accessing state within an AsyncNotifier implementation method:

# AsyncNotifier State Access Best Practices

## Use the `update` method for simple synchronous updates
- Prefer using the `update` method for straightforward state updates
- The `update` method handles state transitions automatically
- Example:
  ```
  await update((previousState) {
    return previousState.copyWith(field: newValue);
  });
  ```

## Use `AsyncValue.guard` for asynchronous operations
- Wrap asynchronous operations with `AsyncValue.guard`
- This automatically catches and handles errors during async operations
- Example:
  ```
  state = await AsyncValue.guard(() async {
    // Async operation here
    return newState;
  });
  ```

## Always check if the state value exists before updating
- Use `state.valueOrNull` or `state.asData?.value` to safely access the current state
- Perform a null check before attempting to modify the state
- Example:
  ```
  final currentState = state.valueOrNull;
  if (currentState != null) {
    // Update state here
  }
  ```

## Use `state.when` for comprehensive state handling
- Utilize `state.when` to handle all possible states (data, loading, error)
- This ensures robust state management across all scenarios
- Example:
  ```
  state.when(
    data: (data) => // Handle data state,
    loading: () => // Handle loading state,
    error: (error, stackTrace) => // Handle error state
  );
  ```

## Avoid direct state mutation
- Always create a new state object instead of mutating the existing one
- Use methods like `copyWith` for immutable state updates
- Example:
  ```
  state = AsyncValue.data(currentState.copyWith(field: newValue));
  ```

## Handle mounted state for auto-dispose providers
- Check if the notifier is still mounted before updating state after async operations
- This prevents updating state on disposed providers
- Example:
  ```
  if (mounted) {
    state = AsyncValue.data(newState);
  }
  ```

## Use Freezed with copyWith for complex state objects
- Leverage Freezed's `copyWith` method for managing updates to complex state objects
- This simplifies partial updates and maintains immutability
```
