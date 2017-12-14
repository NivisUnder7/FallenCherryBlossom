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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

extension MainListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let frame = UIScreen.main.bounds
        let cell = UITableViewCell(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        
        
        return cell
    }
    
    
}
