//
//  ShipTableViewCell.swift
//  SpaceXInfo
//
//  Created by Danil Sigal on 21.06.2021.
//

import UIKit
import Kingfisher

class ShipTableViewCell: UITableViewCell, CellReusableProtocol {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var yearBuiltLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAppearance()
    }
    
    private func setupAppearance() {
        photoImageView?.layer.cornerRadius = 15
        photoImageView?.layer.masksToBounds = true
        photoImageView?.contentMode = .scaleAspectFill
        nameLabel.font = .boldSystemFont(ofSize: 20)
        
    }
    
    func configure(with ship: ShipModel) {
        if let urlString = ship.image {
            let imageUrl = URL(string: urlString)
            photoImageView.kf.setImage(with: imageUrl)
        }
        nameLabel.text = ship.name
        typeLabel.text = ship.type
        idLabel.text = ship.id
        yearBuiltLabel.text = ship.yearBuilt?.description
    }

    
}
