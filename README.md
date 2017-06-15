# iOS-Localization
Simple demo of localization capabilities of iOS

## Localizable file types
 - `.strings` : Simple `properties` file with `"String" = "String";` structure. Most texts live in `Localizable.strings` file but there are some special cases such as the `InfoPlist.strings` file, which is used to provide meta-data for the application binary.
 - `.stringsdict` : Apple's XML based Property List format - used in the project for special handling of plurals. Read more on [Handling Noun Plurals and Units of Measurement]. 
## Project Structure
XCode (IDE) uses `.lproj` folders to manage the project's localized resources. The folder name is prefixed with the ISO language code.
Examples:
`en.lproj` - for English (en)
`es-MX.lproj` - for Mexican Spanish (es-MX)

The localized files such as `Localizable.strings`, `InfoPlist.strings`, `Localizable.stringsdict` are placed in each folder and should contain the translated text for that language.

[Handling Noun Plurals and Units of Measurement]: <https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPInternational/LocalizingYourApp/LocalizingYourApp.html#//apple_ref/doc/uid/10000171i-CH5-SW10>
