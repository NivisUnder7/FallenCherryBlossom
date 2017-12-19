//
//  StringExtension.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/19.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation
import UIKit

extension String {

    func getSearchButtonFont() -> NSAttributedString? {
        guard let font = UIFont(name: "HiraginoSans-W6", size: 18) else {
            return nil
        }

        let atString = NSMutableAttributedString(attributedString: NSAttributedString(string: self,
                                                                                      attributes: [.font: font]))
        atString.addAttributes([.foregroundColor: UIColor.black], range: NSRange.init(location: 0, length: atString.length) )

        return atString
    }
}
