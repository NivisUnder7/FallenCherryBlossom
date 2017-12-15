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

    func setup(cardInfo: CardStruct) {
        cardNameLabel.text = cardInfo.cardName
        actionTypeLabel.text = cardInfo.actionType.rawValue
        damageLable.text = cardInfo.damage
    }
}
