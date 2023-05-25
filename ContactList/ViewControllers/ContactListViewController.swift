//
//  ViewController.swift
//  ContactList
//
//  Created by Lera Savchenko on 23.05.23.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var persons: [Person] = []

// MARK: - Tadble view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullName", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
//    MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
            contactDetailsVC.contact = persons[indexPath.row]
        }
    }


}

