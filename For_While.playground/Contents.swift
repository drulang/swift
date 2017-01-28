//: Playground - noun: a place where people can play

import UIKit

//
// MARK: For
//

for i in 1...10 where i % 2 == 0 {
    // Prints even
}

let mixMatchNils = [1,nil,2,nil, 3]

// Loop over non-nil items in collection
for case let i? in mixMatchNils {
    print(i)
}

// Loop over nil items in collection
for case nil in mixMatchNils {
    print("i'm nil")
}
