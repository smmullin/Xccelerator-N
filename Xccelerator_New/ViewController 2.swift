//
//  ViewController.swift
//  Xccelerator_New
//
//  Created by Sarah Mullings on 3/27/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath)
        cell.textLabel?.text = "Car Post"
        return cell
    }
    

    @IBOutlet weak var carPostsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        carPostsTableView.delegate = self
        carPostsTableView.dataSource = self
    }


}

