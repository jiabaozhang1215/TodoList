//
//  TodoModel.swift
//  TodoList
//
//  Created by jiabaozhang on 2018/3/5.
//  Copyright © 2018年 maskbrook. All rights reserved.
//

import UIKit

struct TodoModel {
    var id: String
    var image: String
    var title: String
    var date: String
    
    init(id: String, image: String, title: String, date: String) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}

