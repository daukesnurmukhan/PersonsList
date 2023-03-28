//
//  ViewController.swift
//  PersonsList
//
//  Created by Нұрмұхан Дәукес on 27.02.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    let persons = Person.createPerson()
   
    
    // MARK: - Table view data source(Источник данных табличного представления)
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackName", for: indexPath)
        
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.sureName
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            
            detailVC.person = persons[indexPath.row]
        
        }
    }
    


}

