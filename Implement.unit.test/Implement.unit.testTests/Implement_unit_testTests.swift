//
//  Implement_unit_testTests.swift
//  Implement.unit.testTests
//
//  Created by Emre Ülkem on 12.02.2023.
//

import XCTest
@testable import Implement_unit_test

final class Implement_unit_testTests: XCTestCase {
    
    func test_calculateTotal_salesTaxTwentyPercent() {
        
        let items = [
            CheckoutItem(name: "Fish and Chips", price: 625),
            CheckoutItem(name: "Cheeseburger", price: 850),
            CheckoutItem(name: "Milkshake", price: 325),
            CheckoutItem(name: "Black Coffee", price: 175),
            ]
        
        let taxPercentage = 20
        
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        
        XCTAssertEqual(totalToPay, 2370)
    }
}

