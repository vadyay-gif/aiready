@echo off
REM Local build script for Flutter Web PWA without affecting mobile/desktop builds
REM Usage: run_pwa_build.bat [repo-name]

setlocal ENABLEDELAYEDEXPANSION

set REPO_NAME=%1
if "%REPO_NAME%"=="" (
  echo No repo name provided. Using base href "/". For GitHub Pages project sites, pass your repo name.
  set BASE_HREF=/
) else (
  set BASE_HREF=/%REPO_NAME%/
)

echo Running: flutter pub get
flutter pub get
if errorlevel 1 (
  echo flutter pub get failed.
  exit /b 1
)

echo Building Flutter Web PWA with base href "%BASE_HREF%"
flutter build web --release --base-href "%BASE_HREF%" --pwa-strategy=offline-first
if errorlevel 1 (
  echo Build failed.
  exit /b 1
)

echo Build complete. Output in build\web
endlocal



