//
//  AreaCalcTests.swift
//  AreaCalcTests
//
//  Created by Лаванда on 08.02.2024.
//

import XCTest
@testable import AreaCalc

final class AreaCalcTests: XCTestCase {

    func testCircleArea() {
        let circle = Circle(radius: 5.0)
        XCTAssertEqual(circle.area(), Double.pi * 25.0)
    }
        
    func testTriangleArea() {
        let triangle = Triangle(sideA: 3.0, sideB: 4.0, sideC: 5.0)
        XCTAssertEqual(triangle.area(), 6.0)
    }
        
    func testRightAngledTriangle() {
        let triangle = Triangle(sideA: 3.0, sideB: 4.0, sideC: 5.0)
        XCTAssertTrue(triangle.isRightAngled())
    }

}
