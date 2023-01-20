//
//  Todos.swift
//  TodoApp
//
//  Created by Yılmaz Yağız Dokumacı on 20.01.2023.
//

import Foundation

class Todo {
    var title:String?
    var description:String?
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
