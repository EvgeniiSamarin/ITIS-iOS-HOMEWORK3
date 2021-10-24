//
//  LoaderProtocol.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import Foundation

protocol Loader {

    associatedtype DataType

    func load(completion: @escaping (Result<DataType>) -> Void)
}

private class _AnyLoaderBox<DataType>: Loader {

    func load(completion: @escaping (Result<DataType>) -> Void) {
        fatalError("Calling method of abstract class!")
    }
}

private class _LoaderBox<Base: Loader>: _AnyLoaderBox<Base.DataType> {

    private let _base: Base

    init(_ base: Base) {
        _base = base
    }

    override func load(completion: @escaping (Result<Base.DataType>) -> Void) {
        _base.load(completion: completion)
    }
}

final class AnyLoader<DataType>: Loader {

    private let _loader: _AnyLoaderBox<DataType>

    init<LoaderType: Loader>(_ loader: LoaderType) where LoaderType.DataType == DataType {
        _loader = _LoaderBox(loader)
    }

    func load(completion: @escaping (Result<DataType>) -> Void) {
        _loader.load(completion: completion)
    }
}
