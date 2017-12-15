//
//  MainList.swift
//  FallenCherryBlossom
//
//  Created by tgoda on 2017/12/15.
//  Copyright © 2017年 Nivis. All rights reserved.
//

import Foundation
import UIKit

class MainListViewController: UIViewController {
    
    @IBOutlet weak var charaNameTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        charaNameTableView.delegate = self
        charaNameTableView.dataSource = self
        charaNameTableView.register(R.nib.charaNameCell(), forCellReuseIdentifier: "CharaNameCell")
    }
}

extension MainListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //超絶暫定コード。配列から取得する
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //超絶暫定コード
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CharaNameCell") as? CharaNameCell {
            cell.setup(name: "ユリナ")
            return cell
        }

        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewCon = R.storyboard.main.cardListStoryBoardId() else {
            //例外。飛べない
            return
        }

        self.navigationController?.pushViewController(viewCon,
                                                      animated: true)

    }
}
