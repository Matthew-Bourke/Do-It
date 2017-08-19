//
//  TasksViewController.swift
//  Do It
//
//  Created by Matthew Bourke on 19/8/17.
//  Copyright © 2017 Matthew Bourke. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var taskList: UITableView!
    
    var tasks : [Task] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tasks = makeTasks()
        
        taskList.dataSource = self
        taskList.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = " ❗️ \(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Do uni work"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Buy cheese"
        task3.important = false
        
        return [task1, task2, task3]
    }
    
    
    @IBAction func plusTask(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
