//
//  CustomTableViewCell.swift
//  Font_App
//
//  Created by 柯秉钧 on 16/6/27.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

	@IBOutlet weak var RestaurantType: UILabel!
	@IBOutlet weak var RestaurantLocation: UILabel!
	@IBOutlet weak var RestaurantName: UILabel!
	@IBOutlet weak var RestaurantImage: UIImageView!

	override func awakeFromNib() {
		super.awakeFromNib()
		// Initialization code
	}

	override func setSelected(selected: Bool, animated: Bool) {
		super.setSelected(selected, animated: animated)

		// Configure the view for the selected state
	}

}
