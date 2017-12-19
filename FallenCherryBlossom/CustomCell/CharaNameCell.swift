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
    @IBOutlet weak var megamiImageView: UIImageView!
    
    func setup(name: String) {
        nameLabel.text = name
        setMegamiImage(megami: name)
    }
    
    func setMegamiImage(megami: String) {
        guard let name = CharaName(rawValue: megami) else {
            return
        }
        
        let image: UIImage?
        switch name {
        case .yurina:
            image = R.image.sd_yurina()
        case .himika:
            image = R.image.sd_himika()
        case .tokoyo:
            image = R.image.sd_tokoyo()
        case .oboro:
            image = R.image.sd_oboro()
        case .yukihi:
            image = R.image.sd_yukihi_a()
        case .shinra:
            image = R.image.sd_shinra()
        case .saine:
            image = R.image.sd_saine()
        case .tikage:
            image = R.image.sd_chikage()
        case .kururu:
            image = R.image.sd_kururu()
        case .sariya:
            image = R.image.sd_thallya()
        case .utsuro:
            image = UIImage()
        case .honoka:
            image = UIImage()
        case .hagane:
            image = R.image.sd_hagane()
        }
        
        megamiImageView.image = image
    }

}
