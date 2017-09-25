//
//  WheatherManagerProtocol.swift
//  iOSTestWork
//
//  Created by Artem Klushin on 25.09.17.
//  Copyright © 2017 TheGreatCompany. All rights reserved.
//

import Foundation

protocol WeatherManagerProtocol {
    
    func requestCityTemp(cityId: String, completion: @escaping (Double) -> ());
}
