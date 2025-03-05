//
//  KeyboardViewController.swift
//  Wordle
//

import UIKit

// MARK: - KeyboardController
class KeyboardController: NSObject,
                          UICollectionViewDataSource,
                          UICollectionViewDelegate,
                          UICollectionViewDelegateFlowLayout {

  private let keyboardRows: [[String]] = [
    ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"],
    ["A", "S", "D", "F", "G", "H", "J", "K", "L"],
    ["Z", "X", "C", "V", "B", "N", "M", "DELETE_KEY"]
  ]
  var didSelectString: ((String) -> Void)?

  init(collectionView: UICollectionView) {
    super.init()
    collectionView.delegate = self
    collectionView.dataSource = self
  }

  func collectionView(_ collectionView: UICollectionView,
                      numberOfItemsInSection section: Int) -> Int {
    return keyboardRows[section].count
  }

  func collectionView(_ collectionView: UICollectionView,
                      cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "KeyboardCell",
                                                  for: indexPath) as! KeyboardCell
    let letter = keyboardRows[indexPath.section][indexPath.row]
    cell.configure(with: letter)
    
    cell.didSelectString = { [weak self] selectedLetter in
         self?.didSelectString?(selectedLetter)
     }
    
    return cell
  }

  func numItems(in row: Int) -> Int {
    return keyboardRows[row].count
  }
}

