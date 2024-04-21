<!-- CHANGELOG.md -->

# CHANGELOG

---

## 0.4.0 - 2024/04/21

### Change
- Re-write change case system (CCase)
  - split HACaseWizard to several files
- Updated README.md
- Now release a `.zip` file instead of download `.ahk` file or `.exe` file

### Added
+ `Lower Sequential Capital Letters`: lowercase the double capital letters (or triple or more!)

- configuration system
  configurable:
  - menu order
  - use custom order or not
- cases folder
  - inside `/cases/built-in` has three files which is the old cases
- RELEASE.md to draft what to write in releases description

---

## 0.3.2 - 2024/04/01

### Change
- Now the newest version is at the top in CHANGELOG
  (reverse the order of CHANGELOG)

### Added
- link to CHANGELOG in README
- A image for run window instruction

### Removed
- A line of comment in CHANGELOG
  ```html
  <!-- Followed https://common-changelog.org/ -->
  ```

### Fixed
- The placeholder text for images in README is `abc`

---

## 0.3.1 - 2024/03/31

### Added
- ico file icon (missed when commit)

### Fixed
- Wrong version numbers

---

## 0.3.0 - 2024/03/31

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

---

## 0.2.0 - 2024/03/30
It's now on the [GitHub](https://github.com/GhostShadow0316/HACaseWizard)

### Change
+ The file it's now called `HACaseWizard.ahk` instead of `text_case_tool.ahk`

- The menu won't show up if there's no text selected
- `Linebreaks to Spaces` now called `Line breaks to spaces`

### Added
- `rAnDom cAsE`: Randomize the cases
- `iPhone cAse`: Capitalize the second letter and lowercase the rest of every word

---

## 0.1.0 - 2024/01/22

re-write [ctrl_caps_as_case_change.ahk](https://github.com/GorvGoyl/Autohotkey-Scripts-Windows/blob/master/ctrl_caps_as_case_change.ahk)

### Added
- `lowercase`: Converts text to lowercase
- `UPPERCASE`: Converts text to uppercase
- `Title Case`: Capitalize the first letter and lowercase the rest of every word
- `Sentence case`: Capitalize the first letter and lowercase the rest of every sentence
- `Linebreaks to Spaces`: Converts line breaks to spaces

+ `Reverse`: Reverse the order of letter

---
