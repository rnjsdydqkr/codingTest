//
//  main.swift
//  codingTest
//
//  Created by 박권용 on 1/25/25.
//

import Foundation

// ******************************
// 그리디
// ******************************
var n = 1260
var count = 0

let array = [500, 100, 50, 10]

for coin in array {
    count += n / coin
    n = n % coin
}

print(count)
