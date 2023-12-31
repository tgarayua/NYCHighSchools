# NYCHighSchools

![GIF Preview](https://im.ezgif.com/tmp/ezgif-1-103f78be49.gif)

## About

The NYC Schools app is a SwiftUI-based application that allows users to browse a list of schools in New York City and view detailed information about each school, including their average test scores for Reading, Writing, and Math. The app follows the Model-View-ViewModel (MVVM) architectural pattern for clean code separation and modularity.

## Features

- Browse a scrollable list of NYC schools.
- Search for a specific school using the search bar.
- View detailed information about each school, including the school's name and average test scores for Reading, Writing, and Math.
- Smooth navigation between the list view and the school detail view.
- Responsive user interface with dynamic layout and adaptive design.
- Seamless integration of SwiftUI components and animations.

## Installation

To run the NYC Schools app locally on your development machine, follow these steps:

1. Clone the repository: `git clone https://github.com/USERNAME/NYCHighSchools.git`
2. Open the project in Xcode.
3. Build and run the app on the iOS Simulator or a connected iOS device.

## Usage

Once the NYC Schools app is running, you can perform the following actions:

1. On the home screen, you will see a scrollable list of NYC schools.
2. Scroll through the list to browse different schools or use the search bar to find a specific school.
3. Tap on a school to view its detail page.
4. On the school detail page, you will see the school's name and the average test scores for Reading, Writing, and Math.
5. Swipe back to the home screen to select a different school.

## Project Structure

The NYC Schools app follows a standard project structure:

- **Models**: Contains the data model and entities used in the app, such as the `School` model representing a NYC school.
- **Views**: Contains the SwiftUI views used to render the user interface, including the list view and the school detail view.
- **ViewModels**: Contains the view models that provide data and business logic to the views. Includes the `SchoolsViewModel` and `SchoolDetailViewModel`.
- **Network**: Contains the networking and data services used to fetch the school data. Includes the `NetworkingManager` for API communication.
- **Components**: Contains a reusable `SearchBar` component. The purpose of this is for the reusability of the search bar anywhere else in the app.
- **Supporting Files**: Contains the app's entry point (`_0230630_TG_NYCSchoolsApp.swift`), assets, and any other supporting files.
