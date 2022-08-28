//
//  SpeedModel.swift
//  CountYourWay
//
//  Created by Вячеслав Кремнев on 1/28/22.
//

import Foundation

struct Way {
    let counter: Counters
    let typeOfVehicle: Transport
    
    static func getWay() -> Way {
        Way(
            counter: Counters.init(distance: 0, speed: 0, quantityOfStops: 0),
            typeOfVehicle: .walk
        )
    }
}

struct Counters {
    let distance: Int
    let speed: Int
    let quantityOfStops: Int
}

enum Transport {
    case walk
    case bicycle
    case car
    case train
    case plane
    
    var definition: String {
        switch self {
        case .walk:
            return "Учитывайте местность при передвижении пешком!"
        case .bicycle:
            return "Учитывайте местность и направление ветра при передвижении на велосипеде!"
        case .car:
            return "Учитывайте погодные условия при передвижении на автомобиле!"
        case .train:
            return "Учитывайте количество остановок чтобы правильно расчитать время прибытия при передвижении на поезде!"
        case .plane:
            return "Не забудьте пристегнуть ремни!"
        }
    }
}
