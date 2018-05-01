//
//  ViewController.swift
//  1st proj
//
//  Created by Anton Aleksieiev on 5/2/18.
//  Copyright © 2018 fynjyass. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        subscribe()
    }
    
    func subscribe() {
        example(of: "subscribe") {
            let one: Int = 1
            let two: Int = 2
            let three: Int = 3
            
            let observable: Observable<Int> = Observable.of(one, two, three)
            
            _ = observable.subscribe(onNext: { element in
                print(element)
            })
        }
        
        example(of: "empty") {
            let observable = Observable<Void>.empty()
            _ = observable.subscribe(onNext: { (element) in
                print(element)
            }, onCompleted: {
                print("Completed")
            })
        }
        
        example(of: "range") {
            let obserable = Observable<Int>.range(start: 1, count: 10)
            _ = obserable.subscribe(onNext: { i in
                let n = Double(i)
                let fibonacci = Int(((pow(1.61803, n) - pow(0.61803, n)) /
                    2.23606).rounded())
                print(fibonacci)
            })
        }
    }
    
    func example(of description: String, action: () -> Void) {
        print("\n--- Example of:", description, "---")
        action()
    }
}

