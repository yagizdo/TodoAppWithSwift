//
//  TodoCell.swift
//  TodoApp
//
//  Created by Yılmaz Yağız Dokumacı on 20.01.2023.
//

import UIKit

class TodoCell: UITableViewCell {
    
    
    @IBOutlet weak var todoTitleLabel: UILabel!
    
    @IBOutlet weak var todoDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
