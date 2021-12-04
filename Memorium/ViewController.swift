//
//  ViewController.swift
//  Memorium
//
//  Created by Victoria Klimova on 04.12.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let placeNames = [
        "Moscow Ostankino", "Moscow Klemlin", "Pereslavl Zalesskiy",
        "Kostroma", "Kolomna", "Gorokhovets",
        "Sergiev Posad", "Ples", "Vladimir",
        "Rostov"
    ]
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = placeNames[indexPath.row]
        cell.imageView?.image = UIImage(named: placeNames[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

