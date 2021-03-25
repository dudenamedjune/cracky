//
// Created by June Lara on 3/14/21.
//

import Foundation
//Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?
public struct ArraysAndStrings {
    
    func isUnique(str: String) -> Bool {
        let sortedStrArray = str.sorted()
        for (index, character) in sortedStrArray.enumerated() {
            if index < sortedStrArray.count - 2 && sortedStrArray[index + 1] == character {
                return false
            }
        }
        return true
    }
    
    func checkPermutation(_ stringOne: String, _ stringTwo: String) -> Bool {
        if stringOne.count != stringTwo.count {
            return false
        }
        var frequencyOfCharacter =  Array(repeating: 0, count: 128)
        for character in stringOne {
            frequencyOfCharacter[Int(character.asciiValue!)] += 1
        }
        
        for character in stringTwo {
            let frequency: Int = frequencyOfCharacter[Int(character.asciiValue!)]
            if  frequency - 1 < 0 {
                return false
            }
            frequencyOfCharacter[Int(character.asciiValue!)] -= 1
        }
        return true
    }
}


