Airalo Demo

A sample iOS app built with SwiftUI and MVVM showcasing a list of countries fetched from a remote API, and detailed package cards for each country. The project includes custom theming, a shimmer loading effect, localization support, and a clean, constant-driven design.

📋 Requirements

Xcode 15 or later

iOS 16.0+ deployment target

Swift 5.8+

🚀 Installation

Clone the repository

git clone https://github.com/lendkazazi/Airalo-demo.git

Open the project

Double-click Airalo-demo.xcodeproj or open it in Xcode via File → Open…

Build & Run

Select the target simulator or device and press ⌘R

🗂 Project Structure

Airalo-demo/
├── Airalo_DemoApp.swift      # App entrypoint with custom appearance
├── Constants/                # All layout, spacing, colors, fonts constants
├── Models/                   # Decodable models for Country & Package
├── Networking/               # APIService & Endpoint definitions
├── Views/
│   ├── CountryListView.swift # Root list of countries
│   ├── CountryRowView.swift  # Single country row component
│   ├── CountryDetailView.swift# Detail screen with package list
│   ├── PackageCardView.swift # Card UI for each package
│   └── ShimmerView.swift     # Reusable shimmer loading placeholder
├── ViewModels/               # MVVM view models for list & detail
├── Localization/
│   ├── en.lproj/
│   │   └── Localizable.strings  # String keys & translations
│   └── Localizable.swift               # Typed enum for localized strings
└── Assets.xcassets           # Colors, images, app icons

💡 Architecture & Patterns

MVVM: Separation of concerns with ViewModel fetching data and exposing state (isLoading, error, data).

SwiftUI: Declarative UI with NavigationStack, List, and custom components.

Constants-driven: All magic numbers (spacing, colors, fonts) live in AiraloConstants, ensuring consistency.

Theming: Custom navigation bar appearance, fonts (IBM Plex Sans), and color palette via asset catalog and appearance proxies.

✨ Key Features

Async data loading with URLSession and generic fetch<T: Decodable> method.

Shimmer effect during loading states, using a simple shimmer(isActive:) modifier.

Custom list & card UIs: CountryRowView and PackageCardView with gradients, shadows, and consistent styling.

Interactive navigation: Push detail screens via NavigationStack and navigationDestination without default chevrons.

Localization: Localizable.strings + Localizablen enum for typed, safe string access.

Error handling: ErrorView with retry action on network failures.

🛠 Usage Examples

Country List

CountryListView()

Country Detail

CountryDetailView(country: selectedCountry)

Custom Button

Button(Localizablen.buyNowFormat(package.priceText)) {
  // action
}
.buttonStyle(.plain)
.overlay(RoundedRectangle(...))

🎨 Design Tokens

All design tokens (colors, fonts, sizes, shadows) are defined in:

AiraloConstants

Use them to maintain consistent spacing, typography, and color across the app.

🌐 Localization

Strings are stored in Localizable.strings (UTF-16).

Access via Localizablen enum for compile-time safety:

Text(Localizablen.popularCountries)
