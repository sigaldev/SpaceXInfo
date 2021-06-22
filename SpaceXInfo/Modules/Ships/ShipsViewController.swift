//
//  ViewController.swift
//  SpaceXInfo
//
//  Created by Danil Sigal on 21.06.2021.
//

import UIKit

class ShipsViewController: UIViewController, UITableViewDelegate & UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let api = ShipsApi()
    var ships: [ShipModel] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ShipTableViewCell.nib, forCellReuseIdentifier: ShipTableViewCell.identifier)
        
        fetchShips()
    }
    
    func fetchShips() {
        api.fetchShips { [weak self] result in
            switch result {
            case .success(let ships):
                print(self)
                self?.ships = ships
            case .failure(let error):
                print("error is: ", error)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ships.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ShipTableViewCell.identifier) as? ShipTableViewCell else { return UITableViewCell() }
        let ship = ships[indexPath.row]
        cell.configure(with: ship)
        return cell
    }

}

