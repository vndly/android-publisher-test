#!/usr/bin/env bash

set -e

DIR=`dirname $0`
$DIR/../gradlew assembleRelease

java -jar $DIR/android-publisher.jar -package com.mauriciotogneri.testpublish -email ${TEST_PUBLISH_SERVICE_ACCOUNT_EMAIL} -p12 ${TEST_PUBLISH_SERVICE_ACCOUNT_P12} -apk $DIR/../app/build/outputs/apk/release/app-release.apk -track internal