//
//  TodoCell.swift
//  TodoList
//
//  Created by jiabaozhang on 2018/3/5.
//  Copyright © 2018年 maskbrook. All rights reserved.
//

import Foundation
import UIKit

class TodoCell: UITableViewCell {
    
    var icon: UIImageView?
    var titleLabel: UILabel?
    var detailLabel: UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupSubviews()
    }
    
    //MARK - setup subviews
    func setupSubviews() {

        icon = UIImageView.init(frame: CGRect(x: 5, y: 10, width: 40, height: 40))
        contentView.addSubview(icon!)
        
        titleLabel = UILabel.init(frame: CGRect(x: 70, y: 10, width: 200, height: 20))
        titleLabel?.font = UIFont.systemFont(ofSize: 15)
        contentView.addSubview(titleLabel!)
        
        detailLabel = UILabel.init(frame: CGRect(x: 70, y: 30, width: 200, height: 20))
        detailLabel?.font = UIFont.systemFont(ofSize: 12)
        contentView.addSubview(detailLabel!)
        
    }
}
