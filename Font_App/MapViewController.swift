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
		MapView.showsTraffic = true
		MapView.showsUserLocation = true
		MapView.showsCompass = true
		MapView.showsScale = true
		MapView.showsBuildings = true
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

	func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
		let id = "我的图钉"
		if annotation is MKUserLocation {
			return nil
		}
		var annotationView = self.MapView.dequeueReusableAnnotationViewWithIdentifier(id) as? MKPinAnnotationView
		if annotationView == nil {
			annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: id)
			annotationView?.canShowCallout = true
		}

		let imageView = UIImageView(frame: CGRectMake(0, 0, 53, 53))
		imageView.image = UIImage(named: restaurant.image)
		annotationView?.pinTintColor = UIColor.greenColor()
		annotationView?.leftCalloutAccessoryView = imageView
		return annotationView
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
