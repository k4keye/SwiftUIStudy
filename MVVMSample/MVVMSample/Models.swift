//
//  Models.swift
//  MVVMSample
//
//  Created by k4keye on 2022/03/08.
//

import Foundation

struct WeatherModel: Codable{
    let timezone :String
    let current : CurrentWeather
}
struct CurrentWeather :Codable{
    let temp : Float
    let weather : [WeatherInfo]
}
struct WeatherInfo : Codable{
    let main : String
    let description : String
}
