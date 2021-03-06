#!/bin/bash -ev

. ./setenv.sh

pushd ./installs
wget --quiet https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip
test -e "gradle-${GRADLE_VERSION}" || unzip -qq "gradle-${GRADLE_VERSION}"-bin.zip

wget --quiet http://dl.google.com/android/android-sdk_${ANDROID_SDK_VERSION}-linux.tgz
test -e "android-sdk-linux" || tar -xf android-sdk_${ANDROID_SDK_VERSION}-linux.tgz # Do not overwrite an installed Android SDK, because overwriting it may corrupt it.
popd
