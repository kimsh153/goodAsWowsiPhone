//
//  NewPage.swift
//  TableViewImageView
//
//  Created by gsm10 on 2021/10/07.
//

import UIKit
import Then

class NewPage: UIViewController {

    let imageView = UIImageView().then() {
        $0.image = UIImage(named: "github")
    }
    var buttonView = UIButton().then() {
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        $0.setTitleColor(.systemBlue, for: .normal)
        $0.addTarget(self, action: #selector(onClinkMyButton(_:)), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        view.addSubview(imageView)
        view.addSubview(buttonView)
        
        imageView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.centerX.equalToSuperview()
            
            $0.height.width.equalTo(100)
        }
        
        buttonView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(100)
            $0.width.equalTo(400)
        }
        
    }
    @objc internal func onClinkMyButton(_ sender:Any) {
        if let Clinkbutton = sender as? UIButton {
            print("wow")
        }
    }

}
