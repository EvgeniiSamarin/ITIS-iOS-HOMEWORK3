//
//  ArrayProtocol.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import Foundation

protocol Arrayable {
    associatedtype Element
    mutating func push(element: Element)
    mutating func pop() -> Element?
    func peek() throws -> Element
    func isEmpty() -> Bool
    func count() -> Int
    subscript(i: Int) -> Element { get }
}
