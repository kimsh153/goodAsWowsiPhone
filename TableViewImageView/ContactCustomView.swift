//
//  ContactCustomView.swift
//  TableViewImageView
//
//  Created by gsm10 on 2021/10/13.
//

import UIKit

class ContactCustomView: UIView {
    var imageView = UIImageView().then {
        $0.image = UIImage(named: "phone")
    }
    
    let descriptionLabel = UILabel().then {
        $0.text = "010-xxxx-xxxx"
        $0.font = UIFont.systemFont(ofSize: 20)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(descriptionLabel)
        
        imageView.snp.makeConstraints {
            $0.width.height.equalTo(60)
            $0.left.equalTo(-100)
        }
        descriptionLabel.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.left.equalTo(imageView.snp.right).offset(50)
            $0.top.equalTo(-16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

