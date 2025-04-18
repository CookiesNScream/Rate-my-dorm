//
//  RentViewModel.swift
//  Rate-my-Dorm
//
//  Created by Arya Venkatesan on 4/15/25.
//

import Foundation
import Observation
import SwiftUI

@Observable
class RentViewModel{
    public var subleases: [Sublease] = [
            Sublease(name: "Cozy Apt", address: "123 College St", price: 850, distance: 0.5, propertyType: .apartment),
            Sublease(name: "Dorm B12", address: "Dormitory Lane", price: 600, distance: 0.2, propertyType: .dorm),
            Sublease(name: "Shared House", address: "789 Maple Ave", price: 950, distance: 1.2, propertyType: .house)
        ]
        
    public var newSubleaseName = ""
    public var newSubleaseAddress = ""
    public var newSubleasePrice = 0.0
    public var newSubleaseDistance = 0.0
    public var newSubleasePropertyType = PropertyType.apartment

    func add() {
        let newSublease = Sublease(name: newSubleaseName, address: newSubleaseAddress, price: newSubleasePrice, distance: newSubleaseDistance, propertyType: newSubleasePropertyType)
        subleases.append(newSublease);
        
        resetSublease()
    }
    
    func resetSublease(){
        newSubleaseName = ""
        newSubleaseAddress = ""
        newSubleasePrice = 0.0
        newSubleaseDistance = 0.0
        newSubleasePropertyType = PropertyType.apartment
    }
       
}
