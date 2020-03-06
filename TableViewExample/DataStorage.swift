//
//  DataStorage.swift
//  TableViewExample
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class DataStorage{
    
    private static let instance = DataStorage()
    private lazy var countryNames: [Country] = []
    private init(){}
    
   static func getInstance() -> DataStorage{
        return instance
    }
    
    func addCountry(country: Country)
    {
        self.countryNames.append(country)
    }
    
    func getAllCountries() -> [Country]
    {
        return self.countryNames
    }
    
    func loadData()
    {
        
        //countryNames.removeAll()
        countryNames.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "af")))
        countryNames.append(Country(name: "India", capital: "Delhi", flag: #imageLiteral(resourceName: "in")))
               
    }
}
