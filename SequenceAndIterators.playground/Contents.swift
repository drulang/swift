//: Playground - noun: a place where people can play

import UIKit

var fibs = FibsIterator()

fibs.next()
fibs.next()
fibs.next()
fibs.next()
fibs.next()


var stringIt = PrefixIterator(string: "Dru")
stringIt.next()
stringIt.next()
stringIt.next()
stringIt.next()
stringIt.next()

for str in PrefixSequence(string:"DSF") {
    print(str)
}




func wordCount(_ string:String) -> Int {
    guard string.characters.count > 0 else { return 0 }

    var count = 1
    
    for char in string.characters {
        let lowerChar = String(char).lowercased()
        if lowerChar != String(char) {
            count += 1
        }
    }
    
    return count
}


print(wordCount("aStringTastesGood"))
print(wordCount("a"))









