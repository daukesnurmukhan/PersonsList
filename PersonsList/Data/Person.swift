//
//  Person.swift
//  PersonsList
//
//  Created by Нұрмұхан Дәукес on 01.03.2023.
//

import Foundation

struct Person {
    let name: String
    let sureName: String
    let email: String
    let phoneNumber: String
    
    static func createPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0 ..< names.count {
            let person = Person(name: names[index],
                                sureName: surnames[index],
                                email: emails[index],
                                phoneNumber: phones[index])
            
            persons.append(person)
        }
        
        return persons
    }
    
}
