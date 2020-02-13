# ImageScanner

## Run project:

* Xcode Version 11.3 
* Tested on Simulator - iPhone 11 Pro Max,  external iPhone X
* macOS 10.15.1  Catalina
* iOS 13.2

## Setup
To run this project, install it locally using Terminal...
```
$ git clone https://github.com/onielrosario/ImageScanner
$ open ImageScanner.xcodeproj/
```

## Technologies - Frameworks - Architecture:

* Swift 5
* UIKit
* CoreGraphics
* MVC


## Launch Screen:

Upon opening the app the the user can see a splash screen
Showing the App’s main brand.

## Walkthrough:

### First Tab - Warehouse:

The user can see a list of thumbnail images available for selection and sorted accordingly.
Each image represents a section for warehouse.

Upon selecting a thumbnail, user will be directed to a more detailed information view about this image/section.
This detailed window includes:

* the section number 
* A table showing the barcodes available for this section number and the count for each

### Second tab - Inventory:

The user can see a list of all barcodes available for the entire dataset of waref house and the count for each.

## Features:

On the detail window, Users can toggle the “Display data on image” switch
To display a visual of the metadata  over image. This information provides:

* Object Detection for box/Package represented by magenta frames
* Object detection for barcodes represented by yellow frames
* Green label representing barcode numerations for better read

## Timeframe and process:

* Wireframe/UX
*  Skeleton/App flow
* UI/Design
* Backend Functionalities
* Documentation
