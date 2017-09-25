//
//  OpenWeatherMapManager.swift
//  iOSTestWork
//
//  Created by Artem Klushin on 25.09.17.
//  Copyright © 2017 TheGreatCompany. All rights reserved.
//

import Foundation
import Alamofire

public class OpenWeatherMapManager : WeatherManagerProtocol {
    
    func requestCityTemp(cityId: String, completion: @escaping (Double) -> ()) {
        
        let parameters: Parameters = [
            "id": cityId,
            "APPID": "1bab4dba23362d692500e98d4ada64c9",
            "units": "metric"
        ]
        
        Alamofire.request("https://api.openweathermap.org/data/2.5/weather", method: .get, parameters: parameters).responseJSON { response in
            
            if let jsonData = response.result.value as? NSDictionary {
                
                if let main = jsonData["main"] as? NSDictionary {
            
                    if let temp = main["temp"] {
                        
                        completion(temp as! Double);
                        return;
                    }
                }
            }
            
            completion(0);
        }
    }
}
