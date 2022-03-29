//
//  APIFunctions.swift
//  Xccelerator_New
//
//  Created by Sarah Mullings on 3/28/22.
//

import Foundation
import Firebase

struct carPost: Identifiable {
    var id: String
    var make: String
    var color: String
//    var longitude: Double
//    var latitude: Double
}

class APIFunctions {
    static let functions = APIFunctions() //creates an instance of the class
    
    var ref: DocumentReference? = nil
    var delegate: DataDelegate?
    
    func savePost(make: String, color: String){
        let dataToSave : [String: Any] = ["make": make, "color": color]
        ref = Firestore.firestore().collection("Postings").addDocument(data: dataToSave) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(self.ref!.documentID)")
            }
        }
    }
    
    func getPosts(){
        Firestore.firestore().collection("Postings").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    //self.delegate?.updateArray(newArray: document.data())
                }
            }
        }
    }
    
    
}
