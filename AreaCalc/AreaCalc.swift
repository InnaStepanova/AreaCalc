//
//  AreaCalc.swift
//  AreaCalc
//
//  Created by Лаванда on 08.02.2024.
//
import Foundation

protocol AreaCalculatable {
    func area() -> Double
}

class Circle: AreaCalculatable {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

class Triangle: AreaCalculatable {
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    init(sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    func area() -> Double {
        let s = (sideA + sideB + sideC) / 2
        return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    }
    
    func isRightAngled() -> Bool {
        let sides = [sideA, sideB, sideC].sorted()
        return sides[0]*sides[0] + sides[1]*sides[1] == sides[2]*sides[2]
    }
}
