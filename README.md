# Workspace Booking App

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Architecture and Code Quality](#architecture-and-code-quality)
- [Screens and Functionality](#screens-and-functionality)
- [State Management](#state-management)
- [Responsiveness](#responsiveness)
- [Unit Testing](#unit-testing)
- [Setup Instructions](#setup-instructions)
- [Additional Notes](#additional-notes)
- [License](#license)

## Overview
The **Workspace Booking App** is a mobile application built using Flutter, designed to streamline workspace booking. The app allows users to browse workspaces, view detailed information, book a workspace with time-based validation, and receive booking confirmation. The app is designed with **clean code principles** to ensure readability, maintainability, and performance optimization.

This project was created after thorough research into similar booking applications for inspiration, aiming to deliver a smooth and user-friendly experience. It integrates **state management** for efficient UI handling and has been tested on various screen sizes, from small phones to large tablets, ensuring responsiveness.

## Features
### Dynamic Workspace Fetching
- Workspaces are stored in a JSON file for easy data management.
- The app dynamically loads the workspace data and presents it to the user in a structured manner.

### Workspace Details Page
- Detailed information about each workspace, including description, availability, and amenities.
- Users can explore the workspace before making a booking decision.

### Booking Page with Validation
- Users select a workspace and input their booking details, including date, check-in, and check-out times.
- The app includes validation to prevent overlapping bookings and incorrect inputs.

### Booking Confirmation Page
- After a successful booking, a confirmation page shows a summary of the booking details for the user’s review.

## Architecture and Code Quality
The app follows **clean architecture** principles, separating business logic, UI components, and data management for a well-structured and maintainable codebase.

Key points:
- **Clean and Readable**: The code is modular and easy to understand, following industry-standard best practices.
- **Performance Optimized**: The app is designed to handle data efficiently, ensuring a smooth user experience.
- **Scalability**: The codebase is structured to allow future features and updates to be integrated with ease.

## Screens and Functionality
1. **Home Screen**: Displays a list of available workspaces.
2. **Details Screen**: Shows detailed information for the selected workspace.
3. **Booking Screen**: Users can book a workspace by providing the necessary details with date and time validation.
4. **Confirmation Screen**: Confirms the booking and displays booking details to the user.

## State Management
The app leverages **state management** to handle UI updates, keeping the app responsive and efficient. By managing state centrally, the app ensures consistent behavior and efficient memory use, especially with multiple bookings and navigation.

State management features include:
- Handling dynamic UI updates and data changes.
- Managing user inputs and workspace availability status across different screens.

## Responsiveness
The app has been designed and tested to work seamlessly on devices of various sizes. Using Flutter’s built-in responsive design features, the user interface adapts automatically to different screen resolutions and dimensions.

**Tested Devices**:
- iPhone SE (small screen)
- Google Pixel 4a (medium screen)
- Samsung Galaxy Tab S6 (large tablet)

## Unit Testing
To ensure the reliability of the app, unit tests have been integrated into the project. These tests verify the functionality of core features, including:

## Setup Instructions
To run the **Workspace Booking App** locally, follow these steps:

### Prerequisites
Make sure you have the following installed:
- **Flutter SDK**: Install the [Flutter SDK](https://flutter.dev/docs/get-started/install) if you don’t have it set up already.
- **IDE**: Use a Flutter-friendly editor like Visual Studio Code, IntelliJ IDEA, or Android Studio.

### Installation

1. **Clone the repository**: Open your terminal and run the following commands:
   ```bash
   git clone https://github.com/YousefHanafy-SW-ENG/workspaces.git
   cd workspaces
   
2. **Install dependencies**: Install the required dependencies by running:
   ```bash
   flutter pub get

3. **Run the app**: Connect a device via USB or start an emulator and Run the app using:
   ```bash
   flutter run

4. **Testing the app on different screen sizes**: You can use Android Studio's emulator or multiple physical devices to test how the app behaves on different screen sizes.   
   


