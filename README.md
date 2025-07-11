# MenuBarCountdown

⏳ A macOS menu bar countdown timer starting at 16,000 hours. Built with Swift and Cocoa.

## Features

- Displays a live countdown in the macOS menu bar.
- Starts from **16,000 hours** (i.e., 1.825 years).
- Updates every second.
- Automatically stops and shows "⏰ Done" when finished.

## Requirements

- macOS 11.0+
- Xcode 12+
- Swift 5+

## Getting Started

1. Open `MenuBarCountdown.xcodeproj` in Xcode.
2. Build and run the app using ⌘R.
3. The countdown timer will appear in your menu bar.

## Project Structure

- `AppDelegate.swift` – Handles app launch, sets up the menu bar timer, and updates it every second.

## Customization

To change the countdown start time, edit the following line in `AppDelegate.swift`:

```swift
var remainingSeconds = 16000 * 3600  // 16,000 hours
