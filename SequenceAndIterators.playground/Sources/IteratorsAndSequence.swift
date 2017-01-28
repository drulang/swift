import Foundation

public struct FibsIterator:IteratorProtocol {
    /*
     var fibs = FibsIterator()
     
     fibs.next()
     fibs.next()
     fibs.next()
     fibs.next()
     fibs.next()
     */

    var state = (0, 1)

    public init() {}
    
    mutating public func next() -> Int? {
        let upcomingNumber = state.0 + state.1
        
        state = (state.1, upcomingNumber)
        
        return upcomingNumber
    }
}


public struct PrefixIterator : IteratorProtocol {
    public  let string:String
    private var offset:String.Index
    
    public init(string:String) {
        self.string = string
        offset = string.startIndex
    }

    mutating public func next() -> String? {
        guard offset < string.endIndex else { return nil }
        let returnString =  self.string[string.startIndex...offset]
        
        offset = string.index(after: offset)
    
        return returnString
    }
    
}

public struct PrefixSequence : Sequence {
    
    public let string:String
    
    public init(string:String) {
        self.string = string
    }
    
    public typealias Iterator = PrefixIterator
    public func makeIterator() -> PrefixSequence.Iterator {
        return PrefixIterator(string: string)
    }
    
}


