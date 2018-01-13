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
    var currentSelectedButton: UIButton?    // 非選択状態にするためのメソッドで参照する
    let defaultSelectionStr = "非選択" // 非選択として扱う際の文字列
    @IBOutlet weak var megamiButton: UIButton!
    @IBOutlet weak var megamiButton2: UIButton!
    @IBOutlet weak var actionTypeButton: UIButton!

    @IBAction func onTappedMegamiButton(_ sender: UIButton) {
        currentSelectedButton = sender
        let strMegamiList = megamiList.map({ $0.rawValue })
        let picker = ActionSheetStringPicker(title: defaultSelectionStr, rows: strMegamiList,
                                             initialSelection: 0,
                                             doneBlock: { (picker, value, index) in
                                                self.megamiButton.setAttributedTitle((index as? String)?.getSearchButtonFont(),
                                                                                     for: .normal)
        },
                                             cancel: nil , origin: sender)

        picker?.addCustomButton(withTitle: defaultSelectionStr, actionBlock: {
            sender.setAttributedTitle(self.defaultSelectionStr.getSearchButtonFont(), for: .normal)
            self.view.layoutIfNeeded()
        })
        picker?.show()
    }

    @IBAction func onTappedActionTypeButton(_ sender: UIButton) {
        currentSelectedButton = sender
        let actionTypeStrList = actionTypeList.map({ $0.rawValue })
        let picker = ActionSheetStringPicker(title: defaultSelectionStr,
                                             rows: actionTypeStrList,
                                             initialSelection: 0,
                                             doneBlock: { (picker, value, index) in
                                                self.actionTypeButton.setAttributedTitle((index as? String)?.getSearchButtonFont(),
                                                                                         for: .normal)
        }, cancel: nil, origin: sender)
        picker?.addCustomButton(withTitle: defaultSelectionStr, actionBlock: {
            sender.setAttributedTitle(self.defaultSelectionStr.getSearchButtonFont(), for: .normal)
            self.view.layoutIfNeeded()
        })
        picker?.show()
    }

    @IBAction func onTappedSearchButton(_ sender: UIButton) {
        var selectedMegami1 = [Card]()

        if megamiButton.titleLabel?.text != defaultSelectionStr {
            selectedMegami1 = allCardList.filter({ $0.megamiName == megamiButton.titleLabel?.text })
        }

        var selectedMegami2 = [Card]()
        if megamiButton2.titleLabel?.text != defaultSelectionStr {
            selectedMegami2 = allCardList.filter({ $0.megamiName == megamiButton2.titleLabel?.text })
        }
        
        var mergedMegamiCardList = selectedMegami1 + selectedMegami2
        
        if actionTypeButton.titleLabel?.text != defaultSelectionStr {
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
        currentSelectedButton = sender
        let strMegamiList = megamiList.map({ $0.rawValue })
        let picker = ActionSheetStringPicker(title: defaultSelectionStr, rows: strMegamiList,
                                             initialSelection: 0,
                                             doneBlock: { (picker, value, index) in
                                                self.megamiButton2.setAttributedTitle((index as? String)?.getSearchButtonFont(),
                                                                                     for: .normal)
        },
                                             cancel: nil , origin: sender)
        
        picker?.addCustomButton(withTitle: defaultSelectionStr, actionBlock: {
            sender.setAttributedTitle(self.defaultSelectionStr.getSearchButtonFont(), for: .normal)
            self.view.layoutIfNeeded()
        })
        picker?.show()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        currentSelectedButton = nil
    }
}
