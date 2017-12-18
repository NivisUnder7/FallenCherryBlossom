//
//  CardStruct.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation

struct CardStruct: Codable {
    let id: Int
    let megami_name: String
    let name: String
    let main_type: String
    let sub_type: String
    let range: String
    let damage_aura: String
    let damage_life: String
    
//    enum CoadingKeys: String, CodingKey {
//        case mainType = "main_type"
//        case subType = "sub_type"
//        case damageAura = "damage_aura"
//        case damageLife = "damage_life"
//    }
}
