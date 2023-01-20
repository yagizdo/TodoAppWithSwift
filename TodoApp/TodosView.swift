//
//  ViewController.swift
//  TodoApp
//
//  Created by Yılmaz Yağız Dokumacı on 20.01.2023.
//

import UIKit

class TodosView: UIViewController {
    
    @IBOutlet weak var todosTableView: UITableView!
    
    var todos = [Todo]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todosTableView.delegate = self
        todosTableView.dataSource = self
        
      
        
    }

    @IBAction func addTodoBtn(_ sender: Any) {
        let alert = UIAlertController(title: "Add Todo", message: "Please write title and description", preferredStyle: .alert)
        
        alert.addTextField() {
            texfield in
            texfield.placeholder = "Todo Title"
        }
        
        
        alert.addTextField() {
            texfield in
            texfield.placeholder = "Todo Description"
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(cancelAction)
        
        let addTodoAction = UIAlertAction(title: "Add Todo", style: .default) {
            action in
            let todoTitle = alert.textFields![0] as UITextField
            let todoDescription = alert.textFields![1] as UITextField
            
            if let todoT = todoTitle.text, let todoDesc = todoDescription.text {
                let todo = Todo(title: todoT, description: todoDesc)
                self.todos.append(todo)
                self.todosTableView.reloadData()
            }
        }
        
        alert.addAction(addTodoAction)
        self.present(alert, animated: true)
    }
    
}

extension TodosView : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell") as! TodoCell
        
        let todo = todos[indexPath.row]
        
        cell.todoTitleLabel.text = todo.title
        cell.todoDescriptionLabel.text = todo.description
        
        return cell
    }
    
}

