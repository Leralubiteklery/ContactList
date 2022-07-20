//
//  Contact.swift
//  ContactList
//
//  Created by Lera Savchenko on 19.07.22.
//


struct Contact {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContact() -> [Contact]{
        let person = DataStore()
        var contacts: [Contact] = []
        while contacts.count < person.names.count {
            contacts.append(Contact (
                name: person.names.randomElement() ?? "",
                surname: person.surnames.randomElement() ?? "",
                phoneNumber: person.phones.randomElement() ?? "",
                email: person.emails.randomElement() ?? ""
            )
            )
        }
        return contacts
    }
}
