//
//  SectionTableViewController.swift
//  PersonsList
//
//  Created by Нұрмұхан Дәукес on 01.03.2023.
//

import UIKit

class SectionTableViewController: UITableViewController {

    var persons = Person.createPerson()
    
    // MARK: - Table view data source - Источник данных табличного представления
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    // Использование метода для присваивания заголовка секции
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        
        return person.name + " " + person.sureName
    }
    
    // При нажатии на ячейках выделение не остается а сразу уходит
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackName2", for: indexPath)
        
        let person = persons[indexPath.section]
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber
        
        return cell
    }
    

}
