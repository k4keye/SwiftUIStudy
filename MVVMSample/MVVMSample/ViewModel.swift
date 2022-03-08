//
//  ViewModel.swift
//  MVVMSample
//
//  Created by k4keye on 2022/03/08.
//

import Foundation

class WeatherViewModel: ObservableObject{
    @Published var title:String = "-"
    @Published var descriptionText:String = "-"
    @Published var temp:String = "-"
    @Published var timezone:String = "-"
    
    
    init(){
        fetchWeather()
    }
    func fetchWeather(){
        guard let url = URL(string: "https://run.mocky.io/v3/f814f807-5530-42de-be81-d3644f6b1c7d")else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ data, _, error in
            guard let data = data, error == nil else{
                return
            }
            do{
                //jsos 데이터 model 로 변환
                let model = try JSONDecoder().decode(WeatherModel.self, from: data)
                DispatchQueue.main.async {
                    self.title = model.current.weather.first?.main ?? "No title"
                    self.descriptionText = model.current.weather.first?.description ?? "No description"
                    self.temp = "\(model.current.temp)"
                    self.timezone = model.timezone
                }
            }
            catch{
                print("faild")
            }
            
        }
        task.resume()
    }
}



/*
 
 {
 "timezone" : "korea",
   "current" : {
     "temp" : 23.13,
     "weather" : [
       {
         "main" : "clear",
         "description" : "Sky"
       }
     ]
   }

 }
 
 */
