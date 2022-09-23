//
//  MenuCell.swift
//  UIKitApp
//
//  Created by efloresco on 23/09/22.
//

import UIKit

class MenuCell: UITableViewCell {

    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var imgIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCellWithUrl(strInfo: String) {
        lblTitulo.text = strInfo
        imgIcon.image = UIImage.init(named: "config") 
    }
}
