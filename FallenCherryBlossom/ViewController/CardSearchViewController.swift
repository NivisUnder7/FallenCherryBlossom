//
//  CardSearchViewController.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/19.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation
import UIKit
import ActionSheetPicker_3_0

class CardSearchViewController: UIViewController {

    let megamiList = CharaName.megamiList
    let actionTypeList = ActionType.actionTypeList
    var allCardList = [CardStruct]()
    let defaultMegamiButtonTitle = "メガミ"
    let defaultActionTypeButtonTitle = "アクション"
    @IBOutlet weak var megamiButton: UIButton!
    @IBOutlet weak var actionTypeButton: UIButton!

    @IBAction func onTappedMegamiButton(_ sender: UIButton) {
        let strMegamiList = megamiList.map({ $0.rawValue })
        let picker = ActionSheetStringPicker(title: defaultMegamiButtonTitle, rows: strMegamiList,
                                             initialSelection: 0,
                                             doneBlock: { (picker, value, index) in
                                                self.megamiButton.setAttributedTitle((index as? String)?.getSearchButtonFont(),
                                                                                     for: .normal)
        },
                                             cancel: nil , origin: sender)

        picker?.show()
    }

    @IBAction func onTappedActionTypeButton(_ sender: UIButton) {
        let actionTypeStrList = actionTypeList.map({ $0.rawValue })
        let picker = ActionSheetStringPicker(title: defaultActionTypeButtonTitle,
                                             rows: actionTypeStrList,
                                             initialSelection: 0,
                                             doneBlock: { (picker, value, index) in
                                                self.actionTypeButton.setAttributedTitle((index as? String)?.getSearchButtonFont(),
                                                                                         for: .normal)
        }, cancel: nil, origin: sender)
        picker?.show()
    }

    @IBAction func onTappedSearchButton(_ sender: UIButton) {
        var selectedCardList = allCardList
        if megamiButton.titleLabel?.text != defaultMegamiButtonTitle {
            selectedCardList = selectedCardList.filter({ $0.megami_name == megamiButton.titleLabel?.text })
        }

        if actionTypeButton.titleLabel?.text != defaultActionTypeButtonTitle {
            selectedCardList = selectedCardList.filter({ $0.main_type == actionTypeButton.titleLabel?.text ||
                $0.sub_type == actionTypeButton.titleLabel?.text
            })
        }

        guard let viewCon = R.storyboard.main.cardListStoryBoardId() else {
            return
        }

        viewCon.cardList = selectedCardList
        self.navigationController?.pushViewController(viewCon, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
