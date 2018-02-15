//
//  ViewController.swift
//  SwiftDemo
//
//  Created by ladmin on 06/02/2018.
//  Copyright © 2018 Pentaloop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func average(nums: [Double]) -> Double {
        return sum(nums: nums) / Double(nums.count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(increment(number: 1, by: 10))
        let result = stats(numbers: [1, 2, 4])
        print(result.min)                      // 1
        print(result.max)                      // 4
    //plus(a: <#T##Int#>, b: <#T##Int#>)
        
        let mean: ([Double]) -> Double = average
        print(skewedMean(mean: mean, num1: 1.0, num2: 4.0))
    
    }
    func skewedMean(mean: ([Double]) -> Double, num1: Double, num2: Double) -> Double {
        return mean([num1,num2]) + 1.0
    }
    
    func sum(nums: [Double]) -> Double {
        var sum: Double = 0.0
        for num in nums {
            sum += num
        }
        return sum
    }
    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func plus(a: Int, b: Int) ->Int {
        return a + b
    }
    
    func increment(number: Int, by incrementer: Int) -> Int {
        return number + incrementer
    }
    
    
    func stats(numbers: [Int]) -> (min: Int, max: Int) {
        var min = Int.max, max = Int.min
        
        for i in numbers {
            if i < min {
                min = i
            }
            if i > max {
                max = i
            }
        }
        
        return (min, max)
    }

}

