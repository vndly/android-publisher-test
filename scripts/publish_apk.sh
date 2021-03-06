#!/usr/bin/env bash

set -e

DIR=`dirname $0`
$DIR/../gradlew clean
$DIR/../gradlew assembleRelease
$DIR/../gradlew publishApk -PpackageName="com.mauriciotogneri.testpublish" -PapkPath="$DIR/../app/build/outputs/apk/release/app-release.apk" -PtrackName="internal"