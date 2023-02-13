set -a
source .env
set +a

sed -i '' 's/^\(  adaptive_icon_background: \).*$/\1'"$LOCAL_COLOR"'/' flutter_launcher_icons-local.yaml
sed -i '' 's/^\(  adaptive_icon_background: \).*$/\1'"$DEV_COLOR"'/' flutter_launcher_icons-dev.yaml
sed -i '' 's/^\(  adaptive_icon_background: \).*$/\1'"$PROD_COLOR"'/' flutter_launcher_icons-prod.yaml

sed -i '' 's/^\(  adaptive_icon_background: \).*$/\1'"$LOCAL_COLOR"'/' flutter_launcher_icons-local.yaml
sed -i '' 's/^\(  adaptive_icon_background: \).*$/\1'"$DEV_COLOR"'/' flutter_launcher_icons-dev.yaml
sed -i '' 's/^\(  adaptive_icon_background: \).*$/\1'"$PROD_COLOR"'/' flutter_launcher_icons-prod.yaml

sed -i '' 's/^\(  color: \).*$/\1'"$LOCAL_COLOR"'/' flutter_native_splash-local.yaml
sed -i '' 's/^\(  color_dark: \).*$/\1'"$LOCAL_COLOR"'/' flutter_native_splash-local.yaml
sed -i '' 's/^\(    icon_background_color: \).*$/\1'"$LOCAL_COLOR"'/' flutter_native_splash-local.yaml
sed -i '' 's/^\(    icon_background_color_dark: \).*$/\1'"$LOCAL_COLOR"'/' flutter_native_splash-local.yaml

sed -i '' 's/^\(  color: \).*$/\1'"$DEV_COLOR"'/' flutter_native_splash-dev.yaml
sed -i '' 's/^\(  color_dark: \).*$/\1'"$DEV_COLOR"'/' flutter_native_splash-dev.yaml
sed -i '' 's/^\(    icon_background_color: \).*$/\1'"$DEV_COLOR"'/' flutter_native_splash-dev.yaml
sed -i '' 's/^\(    icon_background_color_dark: \).*$/\1'"$DEV_COLOR"'/' flutter_native_splash-dev.yaml

sed -i '' 's/^\(  color: \).*$/\1'"$PROD_COLOR"'/' flutter_native_splash-prod.yaml
sed -i '' 's/^\(  color_dark: \).*$/\1'"$PROD_COLOR"'/' flutter_native_splash-prod.yaml
sed -i '' 's/^\(    icon_background_color: \).*$/\1'"$PROD_COLOR"'/' flutter_native_splash-prod.yaml
sed -i '' 's/^\(    icon_background_color_dark: \).*$/\1'"$PROD_COLOR"'/' flutter_native_splash-prod.yaml

flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-dev.yaml
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-local.yaml
flutter pub run flutter_launcher_icons:main -f flutter_launcher_icons-prod.yaml
flutter pub run flutter_native_splash:create --flavor local
flutter pub run flutter_native_splash:create --flavor dev
flutter pub run flutter_native_splash:create --flavor prod
