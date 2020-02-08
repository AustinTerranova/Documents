//
//  DocumentTableViewController.swift
//  Document
//
//  Created by Austin Terranova on 2/6/20.
//  Copyright © 2020 Austin Terranova. All rights reserved.
//

import UIKit

class DocumentTableViewController: UITableViewController {
   //var title = DocumentTableViewCell.titleLabel.text
    
    //var documentText = titleLabel
    struct Document {
        var title: String
        var size: Int
        //var modified: Date
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let fileManager = FileManager.default
           let documentsURL = fileManager.urls(for: .documentDirectory,
               in:.userDomainMask)[0]
           do {
               let fileUrls = try fileManager.contentsOfDirectory(at:documentsURL, includingPropertiesForKeys: nil)
               // process files
               print(fileUrls)
           } catch {
               print("Error while enumerating files \(documentsURL.path): \(error.localizedDescription)")
           }
        

        }
    
    

     //MARK: - Table view data source
    var document = [
        Document(title: "testTitle", size: 32)
        
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return document.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentTableViewCell", for: indexPath)
        
        cell.textLabel?.text = document[indexPath.row].title
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
