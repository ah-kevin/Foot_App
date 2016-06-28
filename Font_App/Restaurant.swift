//
//  File.swift
//  Font_App
//
//  Created by 柯秉钧 on 16/6/28.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import Foundation

struct Restaurant {
	var name: String
	var type: String
	var location: String
	var image: String
	var isVisited: Bool
	var rating: String = ""
	init(name: String, type: String, location: String, image: String, isVisited: Bool) {
		self.name = name
		self.type = type
		self.location = location
		self.image = image
		self.isVisited = isVisited
	}
}
