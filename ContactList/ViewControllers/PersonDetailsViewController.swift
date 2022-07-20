//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Lera Savchenko on 20.07.22.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var pageTitileLabel: UINavigationItem!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageTitileLabel.title = contact.fullName
        phoneLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
        

    }
    

    

}
