Store App
A modern, clean, and intuitive Grocery & E-Commerce Mobile Application built with Flutter and Dart. Designed to deliver a smooth shopping experience for users, featuring category exploration, deal discovery, product detail views, interactive cart management, order tracking, and user account management.

Key Features
Splash & Welcome Flow: Engaging splash screen and onboarding walkthrough leading users seamlessly to authentication.
Authentication System:
Sign In: Styled input fields with password visibility toggle, "Remember Me" options, and custom app buttons.
Sign Up: Simple account creation flow for new customers.
Dynamic Bottom Navigation (HomeNavigator):
Shop (Home): Banner showcase, horizontal category browser, and popular deals showcase.
Explore (Categories): Categorized catalog browsing (Fruits, Vegetables, Meat, Fish, Seafood, Juice, Dairy, Desserts, etc.).
Cart: Interactive shopping cart with item quantity modifiers, price calculations, and checkout triggers.
Orders: Order history and active order tracking.
Account (Profile): User profile details, account settings, address management, and logout functionality.
Product Details View: High-resolution image preview, price per unit/kg (/st, /kg), quantity counter, favoriting, and "Add to Cart" interactions.
Project Architecture & Structure
The codebase adheres to a modular component architecture separating screens, domain widgets, and core helper utilities:

text

lib/
├── cart_screen/              # Cart management screen
│   └── cart_screen.dart
├── category_screen/          # Category exploration catalog screen
│   └── category_screen.dart
├── core/                     # Application core system
│   ├── appcolor/             # Color palette and theme constants
│   │   └── appColor.dart
│   ├── helpers/              # Reusable UI helper components
│   │   ├── custom_app_button.dart
│   │   └── custom_app_field.dart
│   └── widgets/              # Domain-specific reusable widgets
│       ├── cart_item.dart
│       ├── categories_item.dart
│       ├── counter.dart
│       ├── deals_item.dart
│       ├── order_item.dart
│       └── profile_item.dart
├── details_screen/           # Product detail view screen
│   └── details_screen.dart
├── home_navigator/           # Main bottom navigation bar wrapper
│   └── home_navigator.dart
├── home_screen/              # Main storefront / shop dashboard
│   └── home_screen.dart
├── order_screen/             # Order history & status screen
│   └── order_screen.dart
├── profile_screen/           # User account profile screen
│   └── profile_screen.dart
├── signin_screen/            # Sign in user authentication screen
│   └── signin_screen.dart
├── signup_screen/            # Registration account creation screen
│   └── signup_screen.dart
├── splash_screen/            # Initial splash screen
│   └── splash_screen.dart
├── welcome_screen/           # Welcome onboarding screen
│   └── welcome_screen.dart
└── main.dart                 # Application entry point
Tech Stack & Dependencies
Framework: Flutter SDK (Dart ^3.9.2)
UI Design System: Material Design with custom color schemes (AppColor.orange, AppColor.brown)
Assets: Categorized raster graphic assets for categories, deals, banners, and icons
Getting Started
Follow these steps to set up and run the application locally:

1. Prerequisites
Make sure you have the Flutter SDK installed on your machine. You can verify your setup using:

bash

flutter doctor
2. Clone the Repository
bash

git clone https://github.com/nda-mohamed/store_app.git
cd store_app
3. Fetch Dependencies
Install the required Flutter pub packages:

bash

flutter pub get
4. Run the Application
Launch the app on a connected physical device or emulator:

bash

flutter run
License
This project is for demonstration and educational purposes.
