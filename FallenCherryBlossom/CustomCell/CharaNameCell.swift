//
//  CharaNameCell.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation
import UIKit

class CharaNameCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    func setup(name: String) {
        nameLabel.text = name
    }

}
