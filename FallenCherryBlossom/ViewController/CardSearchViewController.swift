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
    var allCardList = [Card]()
    let defaultMegamiButtonTitle1 = "メガミ1"
    let defaultMegamiButtonTitle2 = "メガミ2"
    let defaultActionTypeButtonTitle = "アクション"
    @IBOutlet weak var megamiButton: UIButton!
    @IBOutlet weak var megamiButton2: UIButton!
    @IBOutlet weak var actionTypeButton: UIButton!

    @IBAction func onTappedMegamiButton(_ sender: UIButton) {
        let strMegamiList = megamiList.map({ $0.rawValue })
        let picker = ActionSheetStringPicker(title: defaultMegamiButtonTitle1, rows: strMegamiList,
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
//        var selectedCardList = allCardList
        var selectedMegami1 = [Card]()

        if megamiButton.titleLabel?.text != defaultMegamiButtonTitle1 {
            selectedMegami1 = allCardList.filter({ $0.megamiName == megamiButton.titleLabel?.text })
        }

        var selectedMegami2 = [Card]()
        if megamiButton.titleLabel?.text != defaultMegamiButtonTitle2 {
            selectedMegami2 = allCardList.filter({ $0.megamiName == megamiButton2.titleLabel?.text })
        }
        
        var mergedMegamiCardList = selectedMegami1 + selectedMegami2
        
        if actionTypeButton.titleLabel?.text != defaultActionTypeButtonTitle {
            mergedMegamiCardList = mergedMegamiCardList.filter({ $0.mainType == actionTypeButton.titleLabel?.text ||
                $0.subType == actionTypeButton.titleLabel?.text
            })
        }

        guard let viewCon = R.storyboard.main.cardListStoryBoardId() else {
            return
        }

        viewCon.cardList = mergedMegamiCardList
        self.navigationController?.pushViewController(viewCon, animated: true)
    }

    @IBAction func onTappedMegami2Button(_ sender: UIButton) {
        let strMegamiList = megamiList.map({ $0.rawValue })
        let picker = ActionSheetStringPicker(title: defaultMegamiButtonTitle2, rows: strMegamiList,
                                             initialSelection: 0,
                                             doneBlock: { (picker, value, index) in
                                                self.megamiButton2.setAttributedTitle((index as? String)?.getSearchButtonFont(),
                                                                                     for: .normal)
        },
                                             cancel: nil , origin: sender)
        
        picker?.show()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
