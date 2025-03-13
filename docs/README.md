# FireFit Flutter Documentation

This directory contains documentation for the FireFit Flutter application, which serves as a client interface for purchasing products managed by the Food on the Stove platform.

## Documentation Files

### [CONFIG_AI.md](./CONFIG_AI.md)
Configuration guidelines for AI assistants working with this Flutter project. Includes project standards, architecture guidelines, and code examples for common patterns.

### [EXAMPLE_FEATURE_STRUCTURE.md](./EXAMPLE_FEATURE_STRUCTURE.md)
A comprehensive example of how to structure a feature in the FireFit Flutter application following clean architecture principles. Includes sample code for all layers (domain, data, presentation).

### [LLM_ROUTING.md](./LLM_ROUTING.md)
Outlines various reasoning methods that AI assistants should employ when working with this Flutter project. Each method is optimized for specific types of development tasks.

### [TESTING_TEMPLATES.md](./TESTING_TEMPLATES.md)
Provides templates for different types of tests in the Flutter project, following best practices for testable code and comprehensive test coverage.

### [COMPLETION_PLAN.md](./COMPLETION_PLAN.md)
Outlines the plan for completing the FireFit Flutter application, including current state analysis, integration with Food on the Stove, completion roadmap, technical considerations, and timeline.

### [AI_EXECUTION_GUIDE.md](./AI_EXECUTION_GUIDE.md)
Provides detailed guidelines for AI assistants to execute the completion plan, including success criteria, execution strategies, and phase-specific implementation instructions.

### [AI_PERSONALITY.md](./AI_PERSONALITY.md)
Defines the personality, tone, and approach of the AI assistant when working on the FireFit Flutter project, ensuring consistent and effective communication.

## Project Overview

The FireFit Flutter application is a client interface for the Food on the Stove platform, allowing users to:

1. Browse and purchase products managed by the Food on the Stove platform
2. View and interact with stations
3. Manage their user profiles and orders

The application follows a clean architecture pattern with proper separation of concerns:
- Domain layer with entities and repository interfaces
- Data layer with repository implementations and data sources
- Presentation layer with screens, widgets, and view models

## Technology Stack

- **Flutter**: Latest stable version with support for web, mobile, and desktop
- **State Management**: hooks_riverpod with flutter_hooks
- **Navigation**: go_router with go_router_generator
- **Models**: freezed and json_serializable for immutable models
- **Functional Programming**: fp_dart for functional patterns
- **Forms**: reactive_forms for form management
- **Testing**: Flutter test framework with Mockito/Mocktail

## Getting Started

To work on this project:

1. Ensure you have Flutter installed and set up
2. Clone the repository
3. Run `flutter pub get` to install dependencies
4. Run `dart run build_runner watch --delete-conflicting-outputs` for code generation
5. Run `flutter run` to start the application

## Development Guidelines

1. Follow the clean architecture pattern as outlined in the documentation
2. Use the provided templates for implementing new features
3. Write tests for all new code following the testing templates
4. Follow the completion plan for prioritizing work
