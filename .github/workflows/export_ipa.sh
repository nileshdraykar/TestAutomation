#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/TestAutomation.xcarchive \
            -exportOptionsPlist TestAutomation/TestAutomation\ iOS/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
