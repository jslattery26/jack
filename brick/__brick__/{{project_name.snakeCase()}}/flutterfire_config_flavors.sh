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

flutterfire config $ACCOUNT --project=$PROJECT --out=lib/firebase_options_local.dart --ios-bundle-id={{application_id}}.local --macos-bundle-id={{application_id}}.local --android-package-name={{application_id}}.local

echo "Configuring flavor dev..."

flutterfire config $ACCOUNT --project=$PROJECT --out=lib/firebase_options_dev.dart --ios-bundle-id={{application_id}}.dev --macos-bundle-id={{application_id}}.dev --android-package-name={{application_id}}.dev