# **Wordle (iOS) 🟩🟨⬜️**  

A simple Wordle game built using Swift and UIKit. This project replicates the core functionality of the popular word-guessing game.

## **Features**
- 🎹 On-screen keyboard for letter selection  
- 📝 Dynamic word generation for each new game  
- 🔤 Letter styling for correctness (incorrect, correct but misplaced, correct and in the right position)  
- 🗑️ Delete last entered character  
- 🏆 Randomized goal words for replayability  

## **Installation**  
1. Clone this repository:  
   ```bash
   git clone https://github.com/oghen-ella/wordle-clone.git
   ```
2. Open the project in Xcode  
3. Build and run the app on an iOS simulator or device  

## **How It Works**
1. Tap on a letter to enter it into the board  
2. Use the delete button to remove the last entered letter  
3. Submit your guess and get feedback on the correctness of your letters  
4. Keep guessing until you find the correct word!  

## **Project Structure**
- `WordGenerator.swift` → Generates a random word for each game  
- `KeyboardController.swift` → Manages keyboard input  
- `KeyboardCell.swift` → Defines tapable letter keys  
- `LetterCell.swift` → Displays guessed letters and updates styling based on correctness  
