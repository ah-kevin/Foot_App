//
//  ReviewViewController.swift
//  Font_App
//
//  Created by 柯秉钧 on 16/6/28.
//  Copyright © 2016年 柯秉钧. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

	@IBOutlet weak var bgimageView: UIImageView!
	@IBOutlet weak var stackView: UIStackView!

	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
		// 添加背景虚化
		let blurEffect = UIBlurEffect(style: .Light);
		let effectView = UIVisualEffectView(effect: blurEffect)
		effectView.frame = view.frame
		bgimageView.addSubview(effectView)
		let scale = CGAffineTransformMakeScale(0, 0)
		let tranlate = CGAffineTransformMakeTranslation(0, 500)
		stackView.transform = CGAffineTransformConcat(scale, tranlate)
	}

	override func viewDidAppear(animated: Bool) {
		UIView.animateWithDuration(0.5) {
			self.stackView.transform = CGAffineTransformIdentity
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
