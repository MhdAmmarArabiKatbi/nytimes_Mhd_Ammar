This is a simple Flutter app that fetches data from the NY Times Most Popular Articles API and displays it in a list .
When an item in the list is tapped, the app shows details of the article in a separate screen.

   Getting Started
To run the app, follow these steps:

1- Clone this repository.
2- Open the project in your preferred IDE or text editor.
3- Run flutter pub get to install dependencies.
4- Run flutter run to start the app.
   Features
- Displays a list of most popular articles from NY Times API
- Tapping on an article in the list shows its details in a separate screen
- Pull to refresh functionality to refresh the list of articles 
- Error handling
   Libraries Used
- Dio - For making HTTP requests
- Retrofit - For making API requests more easily
- Dartz - For functional programming in Dart
- Injectable - For dependency injection
- Flutter Bloc - For state management
- Flutter Sizer - For responsive UI design
    Folder Structure
The project follows a standard folder structure for a Flutter project with the following folders:

core: Contains files that are related to the core functionality of the app like exceptions, constants, and error handling.
feature: Contains feature folders that contain files related to each feature of the app. In this case, the only feature is "home".
model: Contains model classes used throughout the app.
repository: Contains repositories used for fetching data from different sources.
service: Contains classes that communicate with APIs using Dio and Retrofit.
utils: Contains utility classes and functions.
![Simulator Screenshot - iPhone 14 Pro Max - 2023-04-29 at 19 24 37](https://user-images.githubusercontent.com/45130757/235310561-d7f64669-ea3e-4b34-9750-56b3dcc0a0a4.png)
![Simulator Screenshot - iPhone 14 Pro Max - 2023-04-29 at 19 24 42](https://user-images.githubusercontent.com/45130757/235310571-1950c86a-dada-430b-bb8c-7abe6a78585f.png)
