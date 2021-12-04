//
//  ViewController.swift
//  Memorium
//
//  Created by Victoria Klimova on 04.12.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let placeNames = [
        "Moscow Ostankino", "Moscow Kremlin", "Pereslavl Zalesskiy",
        "Kostroma", "Kolomna", "Gorokhovets",
        "Sergiev Posad", "Ples", "Vladimir",
        "Rostov"
    ]
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel?.text = placeNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: placeNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height/2
        cell.imageOfPlace.clipsToBounds = true
        return cell
    }
    
    // MARK: - Table view delegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

