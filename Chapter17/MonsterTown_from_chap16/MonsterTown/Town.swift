//
//  Town.swift
//  MonsterTown
//
//  Created by Matthew D. Mathias on 8/22/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

struct Town {
    let region: String
    let oneMayor = Mayor.init()
    var population = 0 {
        didSet(oldValue2){
                print("The population has changed to \(population) from \(oldValue2).")
                if (population < oldValue2){
                    aMayor.MayorAnnouce()
            }
        }
    }
    
    var numberOfStoplights = 4
    
    init?(region: String, population: Int, stoplights: Int){
        guard population > 0 else{
            return nil
        }
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    
    init?(population: Int, stoplights: Int){
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
    
    
    var aMayor = Mayor()
    
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
                
            case 10_001...100_000:
                return Size.medium
                
            default:
                return Size.large
            }
        }
    }
    
    func printDescription() {
        print("Population: \(population); number of stop lights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
