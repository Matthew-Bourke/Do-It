//
//  CreateTaskViewController.swift
//  Do It
//
//  Created by Matthew Bourke on 19/8/17.
//  Copyright © 2017 Matthew Bourke. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTF: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        // Create a task form the outlet information
        let task = Task()
        task.name = taskNameTF.text!
        
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous VC
        previousVC.tasks.append(task)
        previousVC.taskList.reloadData()
        navigationController!.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
