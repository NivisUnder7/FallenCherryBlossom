//
//  Enum.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation

enum CharaName: String {
    case yurina = "ユリナ(第二幕)"
    case himika = "ヒミカ(第二幕)"
    case tokoyo = "トコヨ(第二幕)"
    case oboro = "オボロ(第二幕)"
    case yukihi = "ユキヒ(第二幕)"
    case shinra = "シンラ(第二幕)"
    case saine = "サイネ(第二幕)"
    case hagane = "ハガネ(第二幕)"
    case tikage = "チカゲ(第二幕)"
    case kururu = "クルル(第二幕)"
    case sariya = "サリヤ(第二幕)"
    case utsuro = "ウツロ(第二幕)"
    case honoka = "ホノカ(第二幕)"
    
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
}
