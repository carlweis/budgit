//
//  Expense.swift
//  Budgit
//
//  Created by Carl Weis on 7/6/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import UIKit

struct Expense {
  // MARK: - Properties
  public var name: String
  public var date: Date = Date()
  public var amount: Double = 0.0
  public var recurring: Bool = false
  public var recurringFrequency: RecurringFrequency = RecurringFrequency.monthly
  public var category: String = "Misc"
  public var color: UIColor = .darkGray
  public var receiptImage: UIImage?
  public var notes: String?
  
  // MARK: - Initialization
  init(name: String, amount: Double, recurring: Bool, category: String?) {
    // Initialize local state
    self.name = name
    self.amount = amount
    self.recurring = recurring

    // Safe unwrap the category parameter and assign it, if its set.
    if let category = category {
      self.category = category
    }
  }
  
  static func testData() -> [Expense] {
    return [
      Expense(name: "Rent", amount: 2600.00, recurring: true, category: "Bills"),
      Expense(name: "Car Insurance", amount: 240.00, recurring: true, category: "Bills"),
      Expense(name: "TV/Internet", amount: 136.00, recurring: true, category: "Bills"),
      Expense(name: "Cell Phone", amount: 131.00, recurring: true, category: "Bills"),
      Expense(name: "Lunch", amount: 10.00, recurring: false, category: "Food/Drink"),
      Expense(name: "Metro", amount: 240.00, recurring: true, category: "Transportation"),
      Expense(name: "Coffee", amount: 5.75, recurring: false, category: "Food/Drink"),
    ]
  }
}
