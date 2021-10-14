//
//  AboutControllerViewController.swift
//  TableViewImageView
//
//  Created by gsm10 on 2021/10/12.
//

import UIKit

class AboutControllerViewController: UIViewController {

    var stackView : UIStackView!
    let imageView = UIImageView().then() {
        $0.image = UIImage(named: "banner")
    }
    
    let TitlelabelView = UILabel().then() {
        $0.text = "About WOW"
        $0.textAlignment = .center
        $0.font = UIFont.systemFont(ofSize: 36)
    }
    
    let SublabelView = UILabel().then() {
        $0.text = """
                  Good as wa as wa
                  I will be iOS developer.
                  Althought I'm still not enough, It's the first step.
                  I can do it!
                  I will live as thought, not as I live
                  """
        $0.numberOfLines = 5
        $0.textAlignment = .center
    }
    
    let ContactlabelView = UILabel().then() {
        $0.text = "Contact"
        $0.font = UIFont.systemFont(ofSize: 36)
    }
    
    let ContactCustom = ContactCustomView()
    let ContactCustom1 = ContactCustomView().then {
        $0.imageView.image = UIImage(named: "gmail")
        $0.descriptionLabel.text = "gmail"
    }
    let ContactCustom2 = ContactCustomView().then {
        $0.imageView.image = UIImage(named: "github")
        $0.descriptionLabel.text = "github"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        view.addSubview(imageView)
        view.addSubview(TitlelabelView)
        view.addSubview(SublabelView)
        view.addSubview(ContactlabelView)
        view.addSubview(ContactCustom)
        view.addSubview(ContactCustom1)
        view.addSubview(ContactCustom2)
        
        imageView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.width.equalTo(self.view)
            $0.height.equalTo(200)
        }
        TitlelabelView.snp.makeConstraints {
            $0.top.equalTo(imageView.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
        }
        SublabelView.snp.makeConstraints {
            $0.top.equalTo(TitlelabelView.snp.bottom).offset(70)
            $0.centerX.equalToSuperview()
        }
        
        ContactlabelView.snp.makeConstraints {
            $0.top.equalTo(SublabelView.snp.bottom).offset(35)
            $0.centerX.equalToSuperview()
        }
        ContactCustom.snp.makeConstraints {
            $0.top.equalTo(ContactlabelView.snp.bottom).offset(50)
            $0.centerX.equalToSuperview()
        }
        ContactCustom1.snp.makeConstraints {
            $0.top.equalTo(ContactCustom.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
        }
        ContactCustom2.snp.makeConstraints {
            $0.top.equalTo(ContactCustom1.snp.bottom).offset(60)
            $0.centerX.equalToSuperview()
        }
        
        
        
    }

}

