//
//  main.swift
//  codingTest
//
//  Created by 박권용 on 1/25/25.
//

import Foundation

// *********************
// 올바른 괄호 (Valid Parentheses)
// *********************
print(solution("()()"))
print(solution("(())()"))
print(solution("(()("))
print(solution("())"))

func solution(_ s: String) -> Bool {
  var stack: [Character] = []
  
  for char in s {
    if char == "(" {
      stack.append(char)
    } else if char == ")" {
      if stack.last == "(" {
          stack.removeLast()
      } else if stack.isEmpty {
        return false
      }
    }
  }
  
  return stack.isEmpty
}

// *********************
// 배열 내 두 수의 합 찾기
// *********************

//let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
//let target = Int(readLine()!)!
//
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var dict = [Int: Int]() // [숫자: 인덱스] 형태의 딕셔너리
//
//    for (index, value) in nums.enumerated() {
//        let needed = target - value
//
//        // 필요한 숫자가 이미 딕셔너리에 있다면 바로 반환
//        if let foundIndex = dict[needed] {
//            return [foundIndex, index]
//        }
//
//        // 현재 숫자와 인덱스를 저장
//        dict[value] = index
//    }
//
//    return []
//}

//func twoSum(_ name: [Int], _ target: Int) -> [Int] {
//  for i in 0..<name.count {
//    for j in i + 1..<name.count {
//      if name[i] + name[j] == target {
//        return [i, j]
//      }
//    }
//  }
//  return []
//}
//
//print(twoSum(input, target))

// ******************************
// 그리디
// ******************************
//var n = 1260
//var count = 0
//
//let array = [500, 100, 50, 10]
//
//for coin in array {
//    count += n / coin
//    n = n % coin
//}
//
//print(count)
