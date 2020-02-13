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

<img width="169" alt="Screen Shot 2019-03-08 at 12 45 06 PM" src="https://user-images.githubusercontent.com/43827399/74468803-b04ac480-4e58-11ea-993b-a770178430f8.png">

## Walkthrough:

### First Tab - Warehouse:

The user can see a list of thumbnail images available for selection and sorted accordingly.
Each image represents a section for warehouse.

<img width="169" alt="warehouse screen" src="https://user-images.githubusercontent.com/43827399/74469058-264f2b80-4e59-11ea-93f4-f89cf331fa8d.png">

Upon selecting a thumbnail, user will be directed to a more detailed information view about this image/section.
This detailed window includes:

* the section number 
* A table showing the barcodes available for this section number and the count for each

<img width="169" alt="Screen Shot 2020-02-12 at 1 40 21 PM" src="https://user-images.githubusercontent.com/43827399/74469010-11729800-4e59-11ea-8e82-5fc900ccaca5.png">

### Second tab - Inventory:

The user can see a list of all barcodes available for the entire dataset of waref house and the count for each.

<img width="169" alt="Screen Shot 2020-02-12 at 1 40 21 PM" src="https://user-images.githubusercontent.com/43827399/74469025-1899a600-4e59-11ea-8f2e-98c31636228c.png">

## Features:

On the detail window, Users can toggle the “Display data on image” switch
To display a visual of the metadata  over image. This information provides:

* Object Detection for box/Package represented by magenta frames
* Object detection for barcodes represented by yellow frames
* Green label representing barcode numerations for better read

![feature](https://user-images.githubusercontent.com/43827399/74471672-d7f05b80-4e5d-11ea-9116-b1ea25d44100.gif)
<img width="300" alt="Screen Shot 2020-02-12 at 1 40 21 PM" src="https://user-images.githubusercontent.com/43827399/74468929-ea1bcb00-4e58-11ea-9aa4-e8e674c06a1f.png">

## Timeframe and process:

* Wireframe/UX
*  Skeleton/App flow
* UI/Design
* Backend Functionalities
* Documentation
