//
//  Zombie.swift
//  MonsterTown
//
//  Created by Kenny on 2019/7/14.
//  Copyright © 2019 yysm. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        if (town?.population ?? 0 >= 1000){
            town?.changePopulation(by: -1000)
        }
        else{
            town?.population = 0
        }
//        super.terrorizeTown()
        super.terrorizeTown()
    }
}
