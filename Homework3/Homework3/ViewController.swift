//
//  ViewController.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        var array = Array<Int>(capacity: 10)
        array.push(element: 21)
        array.pop()

        array.push(element: 13)
        array.push(element: 14)
        array.push(element: 15)
        print(array)
        array.pop()
        print(array)
    }


}

