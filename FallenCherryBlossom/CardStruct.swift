//
//  CardStruct.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation

struct CardModel: Codable {
    let megami_code: Int
    let megami_name: String
    let code: String
    let name: String
    let main_type: String
    let sub_type: String
    let range: String
    let damage_aura: String
    let damage_life: String
}

class Card {

    var megamiName: String = ""
    var cardName: String = ""
    var mainType: String = ""
    var subType: String = ""
    var range: String = ""
    var damageAura: String = ""
    var damageLife: String = ""
    var cardId: String = ""  // 画像との紐付けに使うためのID

    init(model: CardModel) {
        megamiName = model.megami_name
        cardName = model.name
        mainType = model.main_type
        subType = model.sub_type
        range = model.range
        damageAura = model.damage_aura
        damageLife = model.damage_life
        cardId = model.megami_code.description + model.code
    }
}
