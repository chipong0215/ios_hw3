//
//  GetData.swift
//  Airport_List
//
//  Created by Pong on 2017/6/2.
//  Copyright © 2017年 Pong. All rights reserved.
//

import Foundation

struct CountryList {
    let name: String
    let airports: [AirportList]
    
}

struct AirportList {
    let name: String
    let countryName: String
    let IATA: String
    let servedCity: String
    let shortName: String
    
    init(dict: [String: String]) {
        
        let name = dict["Airport"]
        self.name = name!
        
        let countryName = dict["Country"]
        self.countryName = countryName!
        
        let IATA = dict["IATA"]
        self.IATA = IATA!
        
        let servedCity = dict["ServedCity"]
        self.servedCity = servedCity!
        
        let shortName = dict["ShortName"]
        self.shortName = shortName!
    }
}

class Data {
    var countryList: [CountryList]
    
    init(countries: [CountryList] = []) {
        self.countryList = countries
    }
    
    convenience init(contentsOfFile path: String) {
        
        let airportGroup = NSArray(contentsOfFile: path) as? [[String: String]]
        let countries = Data.regroup(airportArray: airportGroup!)
        self.init(countries: countries)
    }
    
    static func regroup(airportArray: [[String: String]]) -> [CountryList] {
        var Listtmp : [String: [AirportList]] = [:]
        for i in airportArray {
            let airport = AirportList(dict: i)
            if Listtmp[(airport.countryName)] == nil {
                Listtmp[(airport.countryName)] = []
            }
            Listtmp[(airport.countryName)]!.append(airport)
        }
        
        var countries : [CountryList] = []
        for (countryName, airports) in Listtmp {
            let tmp = CountryList(name: countryName, airports: airports)
            countries.append(tmp)
        }
        return countries
    }
}
