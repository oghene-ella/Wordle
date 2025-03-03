//
//  ViewController+Extensions.swift
//  Wordle
//
//

import Foundation
import UIKit

extension ViewController {
  func setupNavigationBar() {
    navigationController!.navigationBar.isTranslucent = false
    navigationController!.navigationBar.titleTextAttributes = [
      .font: UIFont.systemFont(ofSize: 28.0),
      .foregroundColor: UIColor.white
    ]
    navigationController!.navigationItem.rightBarButtonItem = UIBarButtonItem(
      image: UIImage(systemName: "bell"),
      style: .plain,
      target: nil,
      action: nil
    )
  }
}
