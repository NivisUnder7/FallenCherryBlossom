//
//  CardImageViewController.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation
import UIKit

class CardImageViewController: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!
    var cardName: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
 
        if let cardName = cardName {
            let image = UIImage(named: cardName)
            cardImageView.image = image
        }
    }
}
