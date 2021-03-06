#!/bin/sh
set -eo pipefail
gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/workflows/MegaConference_Appstore_Profile.mobileprovision ./.github/workflows/MegaConference_Appstore_Profile.mobileprovision.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/workflows/Whiz_Distribution_Certificate_And_Key.p12 ./.github/workflows/Whiz_Distribution_Certificate_And_Key.p12.gpg

# gpg --quiet --batch --yes --decrypt --passphrase="$123456789" --output ./.github/workflows/MegaConference_Appstore_Profile.mobileprovision ./.github/workflows/MegaConference_Appstore_Profile.mobileprovision.gpg
# gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/settings/secrets/Whiz_Distribution_Certificate_And_Key.p12 ./.github/settings/secrets/Whiz_Distribution_Certificate_And_Key.p12.gpg




# mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
lib_folder="./.github/library"
provisioning_folder="$lib_folder/MobileDevice/Provisioning Profiles"
mkdir -p "$lib_folder"
mkdir -p "$provisioning_folder"
ls "$provisioning_folder"
cp ./.github/workflows/MegaConference_Appstore_Profile.mobileprovision "$provisioning_folder/MegaConference_Appstore_Profile.mobileprovision"


# security create-keychain -p "nilesh123" build.keychain
# security import ./.github/workflows/Whiz_Distribution_Certificate_And_Key.p12 -t agg -k $lib_folder/Keychains/build.keychain -P "nilesh123" -A

# security list-keychains -s $lib_folder/Keychains/build.keychain
# security default-keychain -s $lib_folder/Keychains/build.keychain
# security unlock-keychain -p "nilesh123" $lib_folder/Keychains/build.keychain

# security set-key-partition-list -S apple-tool:,apple: -s -k "" $lib_folder/Keychains/build.keychain

