//
//  Enum.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation

enum CharaName: String {
    case yurina = "ユリナ"
    case himika = "ヒミカ"
    case tokoyo = "トコヨ"
    case oboro = "オボロ"
    case yukihi = "ユキヒ"
    case shinra = "シンラ"
    case saine = "サイネ"
    case hagane = "ハガネ"
    case tikage = "チカゲ"
    case kururu = "クルル"
    case sariya = "サリヤ"
    case utsuro = "ウツロ"
    case honoka = "ホノカ"
    
    static let megamiList: [CharaName] = [.yurina, .himika, .tokoyo, .oboro,
                                          .yukihi, .shinra, .saine, .hagane,
                                          .tikage, .kururu, .sariya, .utsuro,
                                          .honoka]
}

enum ActionType: String {
    case attack = "攻撃"
    case action = "行動"
    case counter = "対応"
    case enchant = "付与"
    case fullPower = "全力"

    static let actionTypeList: [ActionType] = [.attack, .action, .counter,
                                               .enchant, .fullPower]
}
