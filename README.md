# jack
a starter template for flutter/firebase/riverpod/hooks/gorouter/flavors/theming/icons/launchscreen

## How to install

1) `mason add jack`

2) `mason make jack`

## Firebase Setup

  
1) in your new app dir 
     - if you don't have flutterfire yet run `dart pub global activate flutterfire_cli`

  ```
  chmod +x flutterfire_config_flavors.sh

  ./flutterfire_config_flavors <Firebase-Project-ID> <Firebase-Account-Email (optional)>
  ```
  only add account email parameter if you need to specify firebase account

  **\*steps 2 and 3 are optional**

  2) Go to firebase console of project that you created (or existed)
  
    - Setup auth (enable anonymous sign in)
    - cloud firestore
    - storage
    - anything you need.. etc
  
  3) in firebase dir
  choose same project in previous step
  ```
  firebase init
  ```
  
## Generate Icons and Launch Screens (optional)

  1) Change the Icons in the assets directory based off of the examples i have. keep the filenames the same and they have their corresponding flavor.
  ```
  <your-app-dir>
  └───assets
      │   icon.png
      │   icon-dev.png
      │   icon-local.png
      │   foreground.png
  ```
  2) in <your-app-dir> rename the .env_config file to .env and edit to your flavor colors
  ```env
    LOCAL_COLOR='"#FFFFFF"'
    DEV_COLOR='"#000000"'
    PROD_COLOR='"#180437"'
  ```
  
  3)
  ```
  chmod +x icons_and_launch_screen.sh
  ```
  
  4) 
  ```
  ./icons_and_launch_screen.sh
  ```
  
## Theming

For theming this uses the dynamic_color package but when the device isn't supported it uses some themes found in `<your-app-dir>/lib/theming/themes.dart`

The `defaultLightColorScheme` and `defaultDarkColorScheme` can be generated using the [Material 3 Theme Builder](https://m3.material.io/theme-builder#/dynamic)

Then all you have to do is export to flutter and replace the code in `app/lib/theming/themes.dart`.
