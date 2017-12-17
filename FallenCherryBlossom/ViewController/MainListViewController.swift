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
    
    let megamiList = CharaName.megamiList
    var cardList = [CardStruct]()

    @IBAction func onTappedLoadButton(_ sender: UIBarButtonItem) {
        //カードリストをJSONから読込
        guard let path = Bundle.main.path(forResource: "cards", ofType: "json") else {
            return
        }
        
        do {
            let jsonStr = try String(contentsOfFile: path)
            cardList = try! JSONDecoder().decode([CardStruct].self,
                                                 from: jsonStr.data(using: .utf8)!)
        } catch {
            print("jsonの読み込みに失敗しました")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        charaNameTableView.delegate = self
        charaNameTableView.dataSource = self
        charaNameTableView.register(R.nib.charaNameCell(), forCellReuseIdentifier: "CharaNameCell")
    }
}

extension MainListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return megamiList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CharaNameCell") as? CharaNameCell {
            let megami = megamiList[indexPath.row]
            cell.setup(name: megami.rawValue)
            return cell
        }

        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewCon = R.storyboard.main.cardListStoryBoardId() else {
            //例外。飛べない
            return
        }
        
        let selectedCard = cardList.filter({ $0.megami == megamiList[indexPath.row].rawValue })

        viewCon.cardList = selectedCard
//        viewCon.characterName = megamiList[indexPath.row]
        self.navigationController?.pushViewController(viewCon,
                                                      animated: true)

    }
}
