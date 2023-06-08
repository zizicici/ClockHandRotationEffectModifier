# ClockHandRotationEffectModifier

You can download the ClockHandRotationEffect.xcframework directly or make your own.

If you build you own. Due to macOS Ventura not support Xcode 13 officially and other reason. There are some tips for you:

1. Use Xcode 13.
```
xcode-select -p /Applications/Xcode13.4.1.app/Contents/Developer
```

2. Open Xcode 13.
```
open /Applications/Xcode13.4.1.app/Contents/MacOS/Xcode
```

3. Don't forget setting `Yes` in target -> `Build Settings` -> `Build Options` -> `Build Libraries for Distribution`

When you drag xcframework in your project. Please set "Embed & Sign" in target -> 'General' -> `Frameworks, Libraries, and Embedded Content`

----

README.md from everettjf/Xcode13ClockHandRotationEffectModifier:

# Xcode13ClockHandRotationEffectModifier

Make sure Xcode13 is default.

```
xcode-select -p
/Applications/Xcode13.4.1.app/Contents/Developer
```

Otherwise

```
sudo xcode-select -s /Applications/Xcode13.4.1.app
```


Create xcframework

1. create a swift framework project named : Xcode13ClockHandRotationEffect
2. add Xcode13ClockHandRotationEffectModifier.swift to the project
3. run build-xcframework.sh in the project root.
4. use the xcframework for SPM or directly into your Xcode14 project


Or build single file

```bash
xcrun swiftc Xcode13ClockHandRotationEffectModifier.swift -emit-module -emit-library -static
```


Then make it spm.

