//
//  CivicShipport.swift
//  Homework3
//
//  Created by Евгений Самарин on 24.10.2021.
//

import Foundation

class CivicShipport<T: Ship>: Shipport {

    var ships = [T]()
    var subdivisionShipport = [CivicShipport<T>]()
}
