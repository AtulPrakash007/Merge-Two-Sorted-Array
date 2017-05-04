//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let firstArray = [1,2,4,7]
let secondArray = [3,5,6,9,10]

func callMethod(){
    getSortedArray(firstArray: firstArray, secondArray: secondArray)
}

func getSortedArray(firstArray fAry:[Int], secondArray sAry:[Int]){
    var newArray = [Int]()
    let fArray:NSMutableArray = []
    let sArray:NSMutableArray = []
    
    fArray.setArray(fAry)
    sArray.setArray(sAry)
    
    while fArray.count != 0 && sArray.count != 0 {
        if (fArray[0] as! Int) < (sArray[0] as! Int) {
            newArray.append(fArray[0] as! Int)
            fArray.removeObject(at: 0)
        }else{
            newArray.append(sArray[0] as! Int)
            sArray.removeObject(at: 0)
        }
    }
    
    if fArray.count == 0{
        if sArray.count != 0 {
            for i in 0...sArray.count-1{
                newArray.append(sArray[i] as! Int)
            }
        }
    }else{
        if fArray.count != 0 {
            for i in 0...fArray.count-1{
                newArray.append(fArray[i] as! Int)
            }
        }
    }
    print(newArray)
}

callMethod()
