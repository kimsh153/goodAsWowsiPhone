//
//  ViewController.swift
//  TableViewImageView
//
//  Created by gsm10 on 2021/10/06.
//

import UIKit
import Then
import SnapKit

class ViewController: UIViewController {
    // MARK: - Properties
    let tableView = UITableView().then {
        $0.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    let arr = ["mjuLogo", "reactLogo", "swiftLogo","iosLogo"]
    let arr2 = ["mju univ", "learn React", "start Swift", "be iOS developer"]
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "memory"
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        addButtonAction()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        tableView.rowHeight = 70
    }
    
    
    // MARK: - Actions
    func addButtonAction() {
        tableView.snp.makeConstraints{
            $0.size.width.height.equalTo(500)
        }
    }
}

extension ViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        let con = NewPage()
        con.buttonView.setTitle("Remember \(arr2[indexPath.row])", for: .normal)
        con.imageView.image = UIImage(named: arr[indexPath.row])
        navigationController?.pushViewController(con, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier,
                                                 for: indexPath) as! CustomTableViewCell
        cell.myImageView.image = UIImage(named: arr[indexPath.row])
        // 사진 테두리
//         cell.myImageView.layer.borderWidth = 1
        cell.myImageView.clipsToBounds = true
        cell.myLabel.text = arr2[indexPath.row]
        
        return cell
    }

    
}
