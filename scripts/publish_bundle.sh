#!/usr/bin/env bash

set -e

DIR=`dirname $0`
$DIR/../gradlew bundleRelease
$DIR/../gradlew publish -PpackageName="com.mauriciotogneri.testpublish" -PbundlePath="$DIR/../app/build/outputs/bundles/release/app-release.apk" -PtrackName="internal"