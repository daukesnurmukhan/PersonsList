//
//  DetailViewController.swift
//  PersonsList
//
//  Created by Нұрмұхан Дәукес on 28.02.2023.
//

import UIKit

class DetailViewController: UIViewController {

    var person: Person!
    
    @IBOutlet var fullName: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var trackName: String!
    var trackEmail: String!
    var trackPhone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullName.text = person.name + " " + person.sureName
        emailLabel.text = person.email
        phoneLabel.text = person.phoneNumber
    }
    


}
