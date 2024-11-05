# Firefit

Firefit is a comprehensive Flutter application designed to provide a seamless experience for managing various aspects of commerce, meals, surveys, and more. This project leverages a modular architecture to ensure scalability and maintainability.

## Project Overview

Firefit is a multi-feature application that includes functionalities such as:
- Commerce management with shopping cart and order tracking.
- Meal planning and nutrition tracking.
- Survey creation and management.
- Chat functionalities with AI assistance.

## Architecture

The application follows a feature-based architecture, with each feature encapsulated within its own module. This approach promotes separation of concerns and makes the codebase easier to navigate and maintain.

### Key Features

- **Commerce**: Includes screens and providers for managing shopping carts, orders, and provider searches.
- **Meals**: Provides tools for meal planning, nutrition tracking, and AI-assisted meal searches.
- **Surveys**: Allows users to create and manage surveys with dynamic form rendering.
- **Chat**: Features AI-assisted chat functionalities and a robust chat database.

### Core Technologies

- **Flutter**: The primary framework for building the application.
- **Riverpod**: Used for state management across the application.
- **Supabase**: Provides backend services for authentication and data management.
- **Dio**: A powerful HTTP client for making network requests.

## Setup Instructions

To set up the development environment and run the application, follow these steps:

1. **Clone the Repository**: 
   ```bash
   git clone <repository-url>
   cd firefit
   ```

2. **Install Flutter**: Ensure you have Flutter installed. Follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install) if needed.

3. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the Application**:
   ```bash
   flutter run
   ```

## Maintenance Guidelines

- **Updating Dependencies**: Regularly check for updates to the dependencies listed in `pubspec.yaml` and update them using:
  ```bash
  flutter pub upgrade
  ```

- **Code Quality**: Use `flutter analyze` to ensure code quality and adherence to best practices.

- **Testing**: Write and run tests using the Flutter testing framework to maintain code reliability.

- **Documentation**: Keep the code well-documented and update this `README.md` as the project evolves.

By following these guidelines, you can ensure that the Firefit application remains robust and easy to maintain.
