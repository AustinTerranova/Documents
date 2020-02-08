//
//  DocumentViewController.swift
//  Document
//
//  Created by Austin Terranova on 2/6/20.
//  Copyright © 2020 Austin Terranova. All rights reserved.
//

import UIKit

class DocumentViewController: UIViewController {
    
    @IBOutlet weak var titleField: UITextField!
    
    
    @IBOutlet weak var textField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func saveDocument(_ sender: Any) {
        let fileName = "Test"
         let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)

         let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")

          let text = titleField.text
         do {
          try text?.write(to: fileURL, atomically: true, encoding: .utf8)
         } catch {
             print("failed with error: \(error)")
         }

        //print(fileURL)
    }
    


}
