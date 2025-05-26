# ArticleApp 📰

A Flutter application that displays articles using the New York Times Most Popular Articles API.

## Features
* Built using MVVM (Model-View-ViewModel) architecture
* State management with Provider
* REST API integration with NY Times
* Clean and modern UI

## API Configuration

This application uses the New York Times Most Popular Articles API. To run the project:

1. Sign up for an API key at [NY Times Developer Portal](https://developer.nytimes.com/get-started)
2. Replace `sample-key` in the API endpoint with your actual API key
3. API Endpoint: `https://api.nytimes.com/svc/mostpopular/v2/viewed/{period}.json?api-key=YOUR_API_KEY`
   * Available periods: 1, 7, or 30 days

## Getting Started

### Prerequisites
* [Flutter](https://flutter.dev/docs/get-started/install)
* [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/)
* [Xcode](https://developer.apple.com/xcode/) (for iOS development)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/ArticleApp.git
cd ArticleApp
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Project Structure
![Project Structure](https://github.com/burakgrds/ArticleApp/assets/38495115/9bc82e5f-19db-4489-8814-0236ca994d3d)

## Development Setup
* Set up [iOS simulator](https://flutter.dev/docs/get-started/install/macos#set-up-the-ios-simulator)
* Set up [Android emulator](https://flutter.dev/docs/get-started/install/macos#set-up-the-android-emulator)

## Author

👤 **Burak Göl**
* LinkedIn: [Burak Göl](https://www.linkedin.com/in/burak-g%C3%B6l-12b17a13b/)

## License

This project is available under the MIT license. See the LICENSE file for more info.
