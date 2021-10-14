//
//  CustomTableViewCell.swift
//  TableViewImageView
//
//  Created by gsm10 on 2021/10/07.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "CustomTableViewCell"
    
    let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier )
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
//        let imageSize = contentView.frame.size.height-6
        
        myLabel.frame = CGRect(x: contentView.frame.width*0.25, y: 2, width: contentView.frame.width, height: contentView.frame.size.height)
        myImageView.frame = CGRect(x: contentView.frame.width*0.05, y: 0, width: contentView.frame.height, height: contentView.frame.height)
        myImageView.layer.cornerRadius = myImageView.bounds.height / 2
        
    }
}
