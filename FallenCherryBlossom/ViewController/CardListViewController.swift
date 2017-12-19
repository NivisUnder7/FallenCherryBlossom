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
    var cardList = [CardStruct]()

    override func viewDidLoad() {
        cardListTableView.delegate = self
        cardListTableView.dataSource = self

        cardListTableView.register(R.nib.cardCell(), forCellReuseIdentifier: dequeueCellName)
        cardListTableView.reloadData()
    }
}

extension CardListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cardList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //超絶暫定コード。配列から取る
        if let cell = tableView.dequeueReusableCell(withIdentifier: dequeueCellName) as? CardCell {
            cell.setup(cardInfo: cardList[indexPath.row])

            return cell
        }

        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewCon = R.storyboard.main.cardImageStoryboardId() else {
            //例外。飛べない
            return
        }

        viewCon.cardName = cardList[indexPath.row].name
        self.navigationController?.pushViewController(viewCon,
                                                      animated: true)
    }
}
