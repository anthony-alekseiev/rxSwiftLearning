//: Playground - noun: a place where people can play

import RxSwift
import Foundation

example(of: "subscribe") {
    let one: Int = 1
    let two: Int = 2
    let three: Int = 3
    
    let observable: Observable<Int> = Observable.of(one, two, three)
    
    observable.subscribe { event in
        print(event)
    }
}
