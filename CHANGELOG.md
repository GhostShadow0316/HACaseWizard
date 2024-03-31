<!-- CHANGELOG.md -->
<!-- Followed https://common-changelog.org/ -->

# CHANGELOG

---

## 0.0.1 - 2024/01/22

re-write [ctrl_caps_as_case_change.ahk](https://github.com/GorvGoyl/Autohotkey-Scripts-Windows/blob/master/ctrl_caps_as_case_change.ahk)

### Added
- `lowercase`: Converts text to lowercase
- `UPPERCASE`: Converts text to uppercase
- `Title Case`: Capitalize the first letter and lowercase the rest of every word
- `Sentence case`: Capitalize the first letter and lowercase the rest of every sentence
- `Linebreaks to Spaces`: Converts line breaks to spaces

+ `Reverse`: Reverse the order of letter

## 0.0.2 - 2024/03/30
It's now on the [GitHub](https://github.com/GhostShadow0316/HACaseWizard)

### Change
+ The file it's now called `HACaseWizard.ahk` instead of `text_case_tool.ahk`

- The menu won't show up if there's no text selected
- `Linebreaks to Spaces` now called `Line breaks to spaces`

### Added
- `rAnDom cAsE`: Randomize the cases
- `iPhone cAse`: Capitalize the second letter and lowercase the rest of every word

## 0.0.3 - 2024/03/31

### Change
+ Removed this description in `HACaseWizard.ahk`
  ```ahk
  ; A v2 re-write version of this script
  ; https://github.com/GorvGoyl/Autohotkey-Scripts-Windows/blob/master/ctrl_caps_as_case_change.ahk
  ```

### Added
- `iNVERT cASE`: Invert the cases
- `Spaces to line breaks`: Converts spaces to line breaks

+ Descriptions for cases added in CHANGELOG and README
+ New icon for executable


### Fixed
- `Sentence case`
  - Fixed capitalize first letter of **every word** instead of **every sentence**
  - Fixed "I" turns into "i"
