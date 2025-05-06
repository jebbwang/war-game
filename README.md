# War Card Game

A modern implementation of the classic War card game built with SwiftUI for iOS devices.

## Overview

War Card Game is a simple yet engaging card game where players compete against the computer. The game features a clean, modern interface with smooth animations and an intuitive user experience.

## Features

- Classic War card game mechanics
- Beautiful card animations and transitions
- Interactive card flipping
- Score tracking for both player and computer
- Tie detection and alerts
- Modern UI with custom card designs
- Responsive layout that works on various iOS devices

## Technical Details

The game is built using:
- SwiftUI for the user interface
- Swift for game logic
- Custom card assets and animations
- State management using SwiftUI's @State and @Binding properties

## Game Rules

1. Each round, both the player and computer are dealt a card
2. The player with the higher card value wins the round
3. In case of a tie, both players keep their cards and a new round begins
4. The game continues until the player decides to stop
5. The final score is displayed for both players

## Project Structure

- `ContentView.swift`: Main game view and logic
- `CardView.swift`: Custom card view component
- `Assets.xcassets`: Game assets including cards and UI elements
- `War_Card_GameApp.swift`: App entry point

## Requirements

- iOS 15.0 or later
- Xcode 13.0 or later
- Swift 5.5 or later

## Installation

1. Clone the repository
2. Open the project in Xcode
3. Build and run on your iOS device or simulator
