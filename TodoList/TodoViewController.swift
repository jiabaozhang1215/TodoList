//
//  TodoViewController.swift
//  TodoList
//
//  Created by jiabaozhang on 2018/3/5.
//  Copyright © 2018年 maskbrook. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView?
    var todos: [TodoModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Todo"
        
        setupData()
        setupTableView()
        
    }
    
    //MARK - private methods
    private func setupData() {
        todos = [TodoModel(id: "1", image: "child-selected", title: "去游乐场", date: "2014-10-20"),
                 TodoModel(id: "2", image: "shopping-cart-selected", title: "购物", date: "2014-10-28"),
                 TodoModel(id: "3", image: "phone-selected", title: "打电话", date: "2014-10-30"),
                 TodoModel(id: "4", image: "travel-selected", title: "Travel to Europe", date: "2014-10-31")]
    }

    private func setupTableView() {
        self.tableView = UITableView(frame: self.view.bounds, style: .plain)
        self.tableView?.dataSource = self
        self.tableView?.delegate = self
        self.view.addSubview(self.tableView!)
    }
    
    //MARK - UITableView Datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseId = "cell"
        let cell = TodoCell(style: .default, reuseIdentifier: reuseId)
        cell.icon?.image = UIImage.init(named: "\(todos[indexPath.row].image)")
        cell.titleLabel?.text = "\(todos[indexPath.row].id). \(todos[indexPath.row].title)"
        cell.detailLabel?.text = "\(todos[indexPath.row].date)"
        return cell
    }
    
    //MARK - UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController()
        detail.title = todos[indexPath.row].title
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: .automatic)
        }
    }
    
    //MARK -
    
}
