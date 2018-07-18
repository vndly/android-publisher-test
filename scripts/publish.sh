#!/usr/bin/env bash

DIR=`dirname $0`

$DIR/../gradlew assembleRelease

function publish
{
    java -jar $DIR/android-publisher.jar -package com.mauriciotogneri.testpublish -email owt-test@android-pusblisher.iam.gserviceaccount.com -p12 /home/mauricio/.personal/service-account.p12 -apk $1 -track $2
}

publish /home/mauricio/repositories/android-publisher-test/app/build/outputs/apk/release/app-release.apk internal