#!/bin/bash

set -eo pipefail

xcodebuild -workspace TestAutomation.xcworkspace \
            -scheme TestAutomation\ iOS \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/TestAutomation.xcarchive \
            clean archive | xcpretty
