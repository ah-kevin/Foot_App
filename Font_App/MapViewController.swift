//
//  MapViewController.swift
//  Font_App
//
//  Created by 柯秉钧 on 16/6/28.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import UIKit
import MapKit
class MapViewController: UIViewController, MKMapViewDelegate {
	var restaurant: Restaurant!

	@IBOutlet weak var MapView: MKMapView!

	override func viewDidLoad() {
		super.viewDidLoad()

		// 地址转换
		let geocoder = CLGeocoder()
		geocoder.geocodeAddressString(restaurant.location) { (placemarks, error) -> Void in
			if error != nil {
				print(error)
				return
			}
			if let placemarks = placemarks {
				let placemark = placemarks[0]
				let annotation = MKPointAnnotation()
				annotation.title = self.restaurant.name
				annotation.subtitle = self.restaurant.type

				if let location = placemark.location {
					annotation.coordinate = location.coordinate
					self.MapView.showAnnotations([annotation], animated: true)
					self.MapView.selectAnnotation(annotation, animated: true)
				}
			}
		}
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
