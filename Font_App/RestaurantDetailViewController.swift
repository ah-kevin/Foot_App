//
//  RestaurantDetailViewController.swift
//  Font_App
//
//  Created by 柯秉钧 on 16/6/28.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
	var restaurant: Restaurant!
	@IBOutlet weak var restaurantImageView: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()

		restaurantImageView.image = UIImage(named: restaurant.image)
		// Do any additional setup after loading the view.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	/*
	 // MARK: - Navigation

	 // In a storyboard-based application, you will often want to do a little preparation before navigation
	 override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
	 // Get the new view controller using segue.destinationViewController.
	 // Pass the selected object to the new view controller.
	 }
	 */

}
