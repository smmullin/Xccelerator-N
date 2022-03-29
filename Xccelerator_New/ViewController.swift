//
//  ViewController.swift
//  Xccelerator_New
//
//  Created by Sarah Mullings on 3/27/22.
//

import UIKit
import Firebase

protocol DataDelegate {
    func updateArray(newArray: String)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var addPostButton: UIBarButtonItem!
    
    var carPostsArray = [carPost]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "prototypeCell") as! CarPostTableViewCell
        //cell.makeLabel.text =
        //cell.colorLabel.text =
        return cell
    }
    

    @IBOutlet weak var carPostsTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
//        print(carPostsArray)
        APIFunctions.functions.getPosts()
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        print(carPostsArray)
        APIFunctions.functions.getPosts()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //print(APIFunctions.functions.getPosts())
        APIFunctions.functions.getPosts()
        carPostsTableView.delegate = self
        carPostsTableView.dataSource = self
    }
    
    
    
    
    
    
    
    
    
    
    
    

//    class getPosts: ObservableObject{
//        @Published var data = [carPost]() //array containing car posts
//        @Published var noData = false
//
//        let db = Firestore.firestore()
//        init(){
//
//            db.collection("carPosts").addSnapshotListener{(snap, err) in
//                if err != nil {
//                    print((err?.localizedDescription)!)
//                    self.noData = true
//                }
//                for i in snap!.documentChanges {
//                    if i.type == .added {   //if a new post is added, get the values and append them to the data array (line 37)
//                        let id = i.document.documentID
//                        let make = i.document.get("make") as! String
//                        let color = i.document.get("color") as! String
//                        let longitude = i.document.get("longitude") as! Double
//                        let latitude = i.document.get("latitude") as! Double
//
//                        self.data.append(carPost(id: id, make: make, color: color, longitude: longitude, latitude: latitude))
//                     }
//                    if i.type == .removed {
//                        //if data has been deleted
//                    }
//                }
//            }
//        }
//
//    }
    
    
    
}

