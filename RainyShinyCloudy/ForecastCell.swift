//
//  ForecastCell.swift
//  RainyShinyCloudy
//
//  Created by Santiago on 9/7/17.
//  Copyright © 2017 Santiago. All rights reserved.
//

import UIKit

class ForecastCell: UITableViewCell {
    @IBOutlet weak var weatherIcon: UIImageView!

    @IBOutlet weak var highTemp: UILabel!
    
    @IBOutlet weak var weatherType: UILabel!
    
    @IBOutlet weak var day: UILabel!
    
    @IBOutlet weak var lowTemp: UILabel!
    
    @IBOutlet weak var timeStamp: UILabel!

    @IBOutlet weak var windSpeed: UILabel!
    
    @IBOutlet weak var humidityLvl: UILabel!
    
    var forecast: Forecast!
    
    func updateTableForecast(forecast: Forecast)  {
        
        day.text = forecast.date
        timeStamp.text = forecast.timeStamp
        weatherIcon.image = UIImage(named: forecast.weatherType)
        weatherType.text = forecast.weatherType
        windSpeed.text = "Wind: \(forecast.windSpeed) MPH"
        humidityLvl.text = "Humidity: \(forecast.humidity)%"
        
        if convertTempToC == true {
            highTemp.text = "\((round(100*FtoC(fahrenheit: Double(forecast.highTemp)!)/100)))°C"
            lowTemp.text = "\((round(100*FtoC(fahrenheit: Double(forecast.lowTemp)!)/100)))°C"
    }
        else {
            highTemp.text = "\(forecast.highTemp)°F"
            lowTemp.text = "\(forecast.lowTemp)°F"
        }
        
        
        
        
        }
   
        
}


