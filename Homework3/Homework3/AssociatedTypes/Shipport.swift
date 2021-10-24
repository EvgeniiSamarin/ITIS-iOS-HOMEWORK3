//
//  Shipport.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import Foundation

protocol Shipport {

    associatedtype ShipType: Ship
    associatedtype ShipportType: Shipport where ShipportType.ShipType == ShipType

    var ships: [ShipType] { get set }
    var subdivisionShipport: [ShipportType] { get set }
}
