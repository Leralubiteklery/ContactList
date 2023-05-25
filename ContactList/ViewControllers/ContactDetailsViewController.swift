//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Lera Savchenko on 23.05.23.
//

import UIKit

class ContactDetailsViewController: UIViewController {
 
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = contact.fullName
        phoneLabel.text = contact.phoneNumber
        emailLabel.text = contact.email
    }
    


}
