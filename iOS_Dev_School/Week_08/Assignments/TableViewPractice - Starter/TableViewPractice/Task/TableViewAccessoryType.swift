//
//  TableViewAccessoryType.swift
//  TableViewPractice
//
//  Created by giftbot on 2020/05/25.
//  Copyright © 2020 giftbot. All rights reserved.
//

import UIKit

final class TableViewAccessoryType: UIViewController {
    
    /***************************************************
     - 미리 정해진 동물의 이미지와 텍스트를 테이블뷰에 표현
     - 각 셀의 크기는 80
     - 셀을 선택하면 체크박스가 나타나고 다시 선택하면 체크표시가 해제되도록 구현
     
     도전 과제)
     테이블뷰의 각 셀을 위아래로 스크롤 했다가 다시 나타낼 때, 체크 표시가 기존에 했던 곳에 정확히 다시 나타나도록 구현
     ***************************************************/
    
    override var description: String { "Task 2 - AccessoryType" }
    
    let animals = [
        "bear", "buffalo", "camel", "dog", "elephant",
        "koala", "llama", "panda", "lion", "horse",
        "guinea_pig", "koala", "whale_shark", "whale", "duck",
        "seagull", "black_swan", "peacock", "giraffe"
    ]
    
    var checkStatus: Array<Bool> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        let tableView = UITableView(frame: view.frame)
        tableView.rowHeight = 80
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        view.addSubview(tableView)
    }
    func setupUI() {
        for _ in animals {
            checkStatus.append(false)
        }
    }
}


extension TableViewAccessoryType: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        cell.imageView?.image = UIImage(named: animals[indexPath.row])
        
        cell.accessoryType = .checkmark
        if checkStatus[indexPath.row] {
            cell.accessoryType = .checkmark
        }
        else {
            cell.accessoryType = .none
        }
        return cell
    }
}

extension TableViewAccessoryType: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if checkStatus[indexPath.row] == false {
            checkStatus[indexPath.row] = true
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        else {
            checkStatus[indexPath.row] = false
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        tableView.reloadData()
    }
}
