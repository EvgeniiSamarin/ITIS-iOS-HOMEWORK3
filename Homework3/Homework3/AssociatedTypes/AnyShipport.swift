//
//  AnyShipport.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import Foundation

struct AnyShipport {

    let shipport: Any

    init<T: Shipport>(_ shipport: T) {
        self.shipport = shipport
    }
}
