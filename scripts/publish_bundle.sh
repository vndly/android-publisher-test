#!/usr/bin/env bash

set -e

DIR=`dirname $0`
$DIR/../gradlew clean
$DIR/../gradlew bundleRelease
$DIR/../gradlew publishBundle -PpackageName="com.mauriciotogneri.testpublish" -PbundlePath="$DIR/../app/build/outputs/bundle/release/app.aab" -PtrackName="internal"