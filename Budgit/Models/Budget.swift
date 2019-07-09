//
//  Budget.swift
//  Budgit
//
//  Created by Carl Weis on 7/6/19.
//  Copyright © 2019 Carl Weis. All rights reserved.
//

import Foundation

struct Budget {
  // MARK: - Properties
  public var monthlyIncome: Double = 0.0
  public var monthlyExpenses: Double = 0.0
  public var monthlyRemaining: Double = 0.0
  public var monthlyBudget: Double = 0.0
  public var monthlySavingsGoal: Double = 0.0
  public var currentSavings: Double = 0.0
  public var expenses: [Expense] = [Expense]()
}
