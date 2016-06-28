//
//  RestaurantTableViewController.swift
//  Font_App
//
//  Created by 柯秉钧 on 16/6/27.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

	var restaurnt = ["咖啡胡同", "霍米", "茶.家", "洛伊斯咖啡", "贝蒂生蚝", "福奇餐馆", "阿波画室", "伯克街面包坊", "黑氏巧克力", "惠灵顿雪梨", "北州", "布鲁克林塔菲", "格雷厄姆大街肉", "华夫饼 & 沃夫", "五叶", "眼光咖啡", "忏悔", "巴拉菲娜", "多尼西亚", "皇家橡树", "泰咖啡"]

	var restaurnt_image =
		["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]

	var restaurnt_location = ["香港", "香港", "香港", "香港", "香港", "香港", "香港", "悉尼", "悉尼", "悉尼", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "伦敦", "伦敦", "伦敦", "伦敦"]

	var restaurnt_type = ["咖啡 & 茶店", "咖啡", "茶屋", "奥地利式 & 休闲饮料", "法式", "面包房", "面包房", "巧克力", "咖啡", "美式 & 海鲜", "美式", "美式", "早餐 & 早午餐", "法式 & 茶", "咖啡 & 茶", "拉丁美式", "西班牙式", "西班牙式", "西班牙式", "英式", "泰式"]

	var goRestaurnt = [Bool](count: 21, repeatedValue: false);

	override func viewDidLoad() {
		super.viewDidLoad()

		// Uncomment the following line to preserve selection between presentations
		// self.clearsSelectionOnViewWillAppear = false

		// Uncomment the following line to display an Edit button in the navigation bar for this view controller.
		// self.navigationItem.rightBarButtonItem = self.editButtonItem()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: - Table view data source

	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		// #warning Incomplete implementation, return the number of sections
		return 1
	}

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		// #warning Incomplete implementation, return the number of rows
		return restaurnt.count
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		// Configure the cell...
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell

		cell.RestaurantImage.image = UIImage(named: restaurnt_image[indexPath.row])
		cell.RestaurantName.text = restaurnt[indexPath.row]
		cell.RestaurantImage.layer.cornerRadius = cell.RestaurantImage.frame.size.width / 2
		cell.RestaurantImage.clipsToBounds = true
		cell.RestaurantLocation.text = restaurnt_location[indexPath.row]
		cell.RestaurantType.text = restaurnt_type[indexPath.row]
		cell.heart.image = UIImage(named: "heart")
		cell.heart.hidden = true
		if goRestaurnt[indexPath.row] {
			cell.heart.hidden = false
		} else {
			cell.heart.hidden = true
		}

		return cell
	}

//	override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//		let alert = UIAlertController(title: "亲,你选择了我", message: "消息", preferredStyle: UIAlertControllerStyle.ActionSheet)
//		let cancelaction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
//
//		let handleDial = { (action: UIAlertAction) in
//			let alert = UIAlertController(title: "提示", message: "您拨打的电话暂时无法接通", preferredStyle: .Alert)
//			let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
//			alert.addAction(action)
//			self.presentViewController(alert, animated: true, completion: nil)
//		}
//
//		let dialAction = UIAlertAction(title: "拨打 021-6532\(indexPath.row)", style: .Default, handler: handleDial)
//		let mecome = UIAlertAction(title: "我来过", style: .Default) { (_) in
//			let cell = tableView.cellForRowAtIndexPath(indexPath) as! CustomTableViewCell
//			// cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
//			cell.heart.hidden = false
//			self.goRestaurnt[indexPath.row] = true
//		}
//		alert.addAction(cancelaction)
//		alert.addAction(dialAction)
//		alert.addAction(mecome)
//		self.presentViewController(alert, animated: true, completion: nil)
//	}

	/*
	 // Override to support conditional editing of the table view.
	 override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	 // Return false if you do not want the specified item to be editable.
	 return true
	 }
	 */

	// Override to support editing the table view.
	override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
		if editingStyle == .Delete {
			// Delete the row from the data source
//			tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
			restaurnt.removeAtIndex(indexPath.row)
			restaurnt_image.removeAtIndex(indexPath.row)
			restaurnt_type.removeAtIndex(indexPath.row)
			restaurnt_location.removeAtIndex(indexPath.row)
			goRestaurnt.removeAtIndex(indexPath.row)

			tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)

		} else if editingStyle == .Insert {
			// Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
		}
	}

	/**
	 自定义滑动菜单

	 - parameter tableView: <#tableView description#>
	 - parameter indexPath: <#indexPath description#>

	 - returns: <#return value description#>
	 */
	override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
		let share = UITableViewRowAction(style: .Default, title: "分享") { (action, indexPath) in
			let alert = UIAlertController(title: "分享到", message: "请选择分享您要的社交类型", preferredStyle: .ActionSheet)
			let qqAction = UIAlertAction(title: "qq", style: .Default, handler: nil)
			let weiboAction = UIAlertAction(title: "微博", style: .Default, handler: nil)
			alert.addAction(weiboAction)
			alert.addAction(qqAction)
			self.presentViewController(alert, animated: true, completion: nil)
		}
		share.backgroundColor = UIColor(red: 218 / 255, green: 225 / 255, blue: 218 / 255, alpha: 1)
		let delete = UITableViewRowAction(style: .Default, title: "删除") { (action, indexPath) in
			self.restaurnt.removeAtIndex(indexPath.row)
			self.restaurnt_image.removeAtIndex(indexPath.row)
			self.restaurnt_type.removeAtIndex(indexPath.row)
			self.restaurnt_location.removeAtIndex(indexPath.row)
			self.goRestaurnt.removeAtIndex(indexPath.row)
			tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
		}
		return [share, delete]
	}
	/*
	 // Override to support rearranging the table view.
	 override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

	 }
	 */

	/*
	 // Override to support conditional rearranging of the table view.
	 override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
	 // Return false if you do not want the item to be re-orderable.
	 return true
	 }
	 */

	// MARK: - Navigation

	// In a storyboard-based application, you will often want to do a little preparation before navigation
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		// Get the new view controller using segue.destinationViewController.
		// Pass the selected object to the new view controller.
		if segue.identifier == "showRestaurantDetail" {
			let desVC = segue.destinationViewController as! RestaurantDetailViewController
			desVC.restaurantImage = restaurnt_image[tableView.indexPathForSelectedRow!.row]
		}
	}

}
