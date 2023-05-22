#!/bin/bash

PROJECT="${1:-""}"
ACCOUNT=""
if [ -z "$2" ]
then
    ACCOUNT=""
else
    ACCOUNT="--account $2"
fi


echo "Configuring flavor prod..."

flutterfire config $ACCOUNT --project=$PROJECT

echo "Configuring flavor local..."

flutterfire config $ACCOUNT --project=$PROJECT --out=lib/firebase_options_local.dart --ios-bundle-id=com.jackslattery.flutterjack.local --macos-bundle-id=com.jackslattery.flutterjack.local --android-package-name=com.jackslattery.flutterjack.local

echo "Configuring flavor dev..."

flutterfire config $ACCOUNT --project=$PROJECT --out=lib/firebase_options_dev.dart --ios-bundle-id=com.jackslattery.flutterjack.dev --macos-bundle-id=com.jackslattery.flutterjack.dev --android-package-name=com.jackslattery.flutterjack.dev