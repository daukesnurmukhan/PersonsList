//
//  DataManager.swift
//  PersonsList
//
//  Created by Нұрмұхан Дәукес on 01.03.2023.
//

import Foundation

class DataManager {

    static let shared = DataManager()
    
    var names = ["John", "Aaron", "Tim", "Ted",
                 "Steven", "Sharon", "Nicola", "Allan",
                 "Bruce", "Carl"]
    
    var surnames = ["Smith", "Dow", "Isaacson", "Pennyworth",
                    "Jankin", "Butler", "Black", "Robertson",
                    "Myrphy", "Williams"]
    
    var emails = ["jjj@gami.com", "aaa@gami.com", "qqq@gami.com",
                  "ttt@gami.com", "zzz@gami.com", "ppp@gami.com",
                  "rrr@gami.com", "ggg@gami.com", "yyy@gami.com",
                  "xxx@gami.com"]
    
    var phones = ["234567234", "456432745", "123634835", "435672345",
                  "235567890", "345612332", "831429674", "624753649",
                  "457938427", "234576345"]
    
}
