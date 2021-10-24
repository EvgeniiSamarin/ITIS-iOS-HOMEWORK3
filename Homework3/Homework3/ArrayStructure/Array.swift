//
//  Array.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import Foundation

enum ArrayError: Error {
    case Empty(message: String)
}

struct Array<T>: Arrayable {

    public typealias Element = T

    private var array: [T] = []

    init(capacity: Int) {
        self.array.reserveCapacity(capacity)
    }

    mutating func push(element: T) {
        self.array.append(element)
    }

    mutating func pop() -> T? {
        self.array.popLast()
    }

    func peek() throws -> T {
        guard !isEmpty(), let lastElement = self.array.last else {
            throw ArrayError.Empty(message: "Array is empty")
        }
        return lastElement
    }

    func isEmpty() -> Bool {
        self.array.isEmpty
    }

    func count() -> Int {
        self.array.count
    }
}

extension Array: Collection {

    public func makeIterator() -> AnyIterator<T> {
        var current = self
        return AnyIterator { current.pop() }
    }

    public subscript(i: Int) -> T {
        self.array[i]
    }

    public var startIndex: Int {
        self.array.startIndex
    }

    public var endIndex: Int {
        self.array.endIndex
    }

    public func index(after i: Int) -> Int {
        self.array.index(after: i)
    }
}
