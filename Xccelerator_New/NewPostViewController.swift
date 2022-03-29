//
//  NewPostViewController.swift
//  Xccelerator_New
//
//  Created by Sarah Mullings on 3/28/22.
//

import UIKit
import FirebaseFirestore

class NewPostViewController: UIViewController {

    
    
    var ref: DocumentReference? = nil
    
    @IBOutlet weak var makeTextField: UITextField!
    @IBOutlet weak var postButton: UIButton!
    @IBOutlet weak var colorTextField: UITextField!
    
    @IBAction func savePost(_ sender: Any) {
        
        //add error message to notify user they didn't put both values
        
        guard let makeText = makeTextField.text, !makeText.isEmpty else {return}
        guard let colorText = colorTextField.text, !colorText.isEmpty else {return}
        APIFunctions.functions.savePost(make: makeText, color: colorText)
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //ref = Firestore.firestore().collection("carPosts")
    }
}
