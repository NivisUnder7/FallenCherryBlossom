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

enum YurinaCardName: String {
    case yurina_n_1 = "斬"
    case yurina_n_2 = "一閃"
    case yurina_n_3 = "遠当て"
    case yurina_n_4 = "居合"
    case yurina_n_5 = "足捌き"
    case yurina_n_6 = "圧気"
    case yurina_n_7 = "気炎万丈"
    case yurina_s_1 = "月影落"
    case yurina_s_2 = "浦波嵐"
    case yurina_s_3 = "浮舟宿"
    case yurina_s_4 = "天音揺波の底力"

    static let yurinaAllCardList: [String] = [yurina_n_1.rawValue, yurina_n_2.rawValue, yurina_n_3.rawValue, yurina_n_4.rawValue,
                                              yurina_n_5.rawValue, yurina_n_6.rawValue, yurina_n_7.rawValue, yurina_s_1.rawValue,
                                              yurina_s_2.rawValue, yurina_s_3.rawValue, yurina_s_4.rawValue]
}
