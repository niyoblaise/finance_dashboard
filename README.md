💰 Flutter Finance Dashboard

A beautiful and responsive financial dashboard mobile application built with Flutter. Features a modern UI with balance overview, transaction history, savings goals, and financial statistics.
<img width="1080" height="1920" alt="Screenshot_1761259610" src="https://github.com/user-attachments/assets/fa1263d2-d770-4755-a65f-4d501333c456" />


📱 Features

    💰 Balance Overview - Beautiful gradient balance card with current funds

    💳 Wallet Management - View and manage your bank cards

    🎯 Saving Plans - Track progress towards financial goals with visual progress bars

    📊 Transaction History - Recent transactions with categories and amounts

    📈 Statistics - Income vs spending charts with monthly breakdown

    💸 Payments - Platform-wise payment tracking with trends

    🎨 Modern UI - Clean, responsive design with Poppins font family

    📱 Mobile-First - Optimized for mobile devices

🚀 Getting Started
Prerequisites

    Flutter SDK (3.0.0 or higher)

    Dart (2.17.0 or higher)

    Android Studio or VS Code

    Android Emulator or physical device

Installation

    Clone the repository

bash

git clone https://github.com/niyoblaise/finance_dashboard.git
cd finance_dashboard

    Install dependencies

bash

flutter pub get

    Run the app

bash

flutter run

🏗️ Project Structure
text

finance_dashboard/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── screens/
│   │   └── dashboard_screen.dart # Main dashboard UI
│   ├── widgets/
│   │   ├── balance_card.dart     # Balance overview card
│   │   ├── wallet_section.dart   # Wallet management
│   │   ├── saving_plan_section.dart # Savings goals
│   │   ├── transaction_history.dart # Transaction list
│   │   ├── statistics_section.dart # Charts & stats
│   │   └── payments_section.dart # Payments tracking
│   └── models/
│       └── transaction.dart      # Data models
├── assets/
│   └── fonts/                    # Poppins font family
└── pubspec.yaml                  # Dependencies & assets

🛠️ Built With

    Flutter - UI toolkit for building natively compiled applications

    Dart - Client-optimized programming language

    Material Design - Google's design system

    Poppins Font - Modern, geometric typeface

📸 Screenshots
Dashboard	Transactions	Statistics
https://screenshots/dashboard.png	https://screenshots/transactions.png	https://screenshots/statistics.png
🎨 UI Components

    Balance Card: Gradient background with current balance

    Wallet Section: Card management with add new card functionality

    Saving Plans: Progress bars for financial goals

    Transaction List: Categorized transactions with icons

    Statistics Chart: Bar chart for monthly earnings

    Payments Grid: Platform-based payment tracking

📊 Features Overview
Financial Overview

    Real-time balance display

    Income vs spending comparison

    Monthly earnings chart

Transaction Management

    Categorized transactions

    Time-stamped entries

    Expense tracking

Savings Goals

    Progress tracking

    Target amount visualization

    Multiple saving plans

🔧 Customization
Adding New Fonts

    Add font files to assets/fonts/

    Update pubspec.yaml:

yaml

flutter:
  fonts:
    - family: Poppins
      fonts:
        - asset: assets/fonts/Poppins-Regular.ttf

Modifying Colors

Edit the color scheme in individual widget files or create a theme in main.dart.
🤝 Contributing

    Fork the project

    Create your feature branch (git checkout -b feature/AmazingFeature)

    Commit your changes (git commit -m 'Add some AmazingFeature')

    Push to the branch (git push origin feature/AmazingFeature)

    Open a Pull Request


👨‍💻 Author

Niyonshuti blaise

    GitHub: @niyoblaise

    Project: Finance Dashboard

🙏 Acknowledgments

    Flutter team for the amazing framework

    Google Fonts for Poppins typeface

    Design inspiration from modern financial apps
