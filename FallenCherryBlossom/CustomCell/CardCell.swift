//
//  CardCell.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation
import UIKit

class CardCell: UITableViewCell {
    
    @IBOutlet weak var cardNameLabel: UILabel!
    @IBOutlet weak var actionTypeLabel: UILabel!
    @IBOutlet weak var damageLable: UILabel!
    
    let attack = "攻撃"
    let subTypeNothing = "-"

    func setup(cardInfo: Card) {
        cardNameLabel.text = cardInfo.cardName
        //subtypeはなしの場合「-」がJSONに入っているので空欄に読み替える
        let subType = getSubtype(subTypeString: cardInfo.subType)
        actionTypeLabel.text = cardInfo.mainType + subType
        if cardInfo.mainType == attack || cardInfo.subType == attack {
            damageLable.text = cardInfo.damageAura + "/" + cardInfo.damageLife
        } else {
            damageLable.text = ""
        }
    }
    
    func getSubtype(subTypeString: String) -> String {
        var subType: String
        if subTypeString == subTypeNothing {
            subType = ""
        } else {
            subType = subTypeString
        }
        
        return subType
    }
}
