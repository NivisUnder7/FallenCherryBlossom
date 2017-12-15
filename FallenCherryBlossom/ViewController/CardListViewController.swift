//
//  CardListViewController.swift
//  FallenCherryBlossom
//
//  Created by 合田竜志 on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation
import UIKit

class CardListViewController: UIViewController {

    @IBOutlet weak var cardListTableView: UITableView!

    let dequeueCellName = "CardCell"

    override func viewDidLoad() {
        cardListTableView.delegate = self
        cardListTableView.dataSource = self

        cardListTableView.register(R.nib.cardCell(), forCellReuseIdentifier: dequeueCellName)
    }
}

extension CardListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //超絶暫定コード。配列から取る
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //超絶暫定コード。配列から取る
        if let cell = tableView.dequeueReusableCell(withIdentifier: dequeueCellName) as? CardCell {
            let cellInfo = CardStruct(cardName: "斬",
                                      actionType: .attack,
                                      damage: "3/1",
                                      distance: "1〜3")
            cell.setup(cardInfo: cellInfo)

            return cell
        }

        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewCon = R.storyboard.main.cardImageStoryboardId() else {
            //例外。飛べない
            return
        }

        self.navigationController?.pushViewController(viewCon,
                                                      animated: true)
    }
}
