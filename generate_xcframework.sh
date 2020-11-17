#!/usr/bin/env bash

# Build for iOS devices, iOS simulator and macOS
xcodebuild archive -scheme okta-oidc-ios -archivePath "build/ios.xcarchive" -sdk iphoneos SKIP_INSTALL=NO
xcodebuild archive -scheme okta-oidc-ios -archivePath "build/ios_sim.xcarchive" -sdk iphonesimulator SKIP_INSTALL=NO

# Create XCFramework
xcodebuild -create-xcframework -framework "build/ios.xcarchive/Products/Library/Frameworks/OktaOidc.framework" -framework "build/ios_sim.xcarchive/Products/Library/Frameworks/OktaOidc.framework" -output "artifact/OktaOidc.xcframework"
