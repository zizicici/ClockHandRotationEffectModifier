rm -rf ~/Desktop/ClockHandRotationEffect-iphoneos.xcarchive
rm -rf ~/Desktop/ClockHandRotationEffect-iphonesimulator.xcarchive
rm -rf ~/Desktop/ClockHandRotationEffect.xcframework

xcrun xcodebuild archive \
 -scheme ClockHandRotationEffect \
 -archivePath ~/Desktop/ClockHandRotationEffect-iphoneos.xcarchive \
 -sdk iphoneos \
 SKIP_INSTALL=NO



xcrun xcodebuild archive \
 -scheme ClockHandRotationEffect \
 -archivePath ~/Desktop/ClockHandRotationEffect-iphonesimulator.xcarchive \
 -sdk iphonesimulator \
 SKIP_INSTALL=NO



xcrun xcodebuild -create-xcframework \
 -framework ~/Desktop/ClockHandRotationEffect-iphonesimulator.xcarchive/Products/Library/Frameworks/ClockHandRotationEffect.framework \
 -framework ~/Desktop/ClockHandRotationEffect-iphoneos.xcarchive/Products/Library/Frameworks/ClockHandRotationEffect.framework \
 -output ~/Desktop/ClockHandRotationEffect.xcframework
