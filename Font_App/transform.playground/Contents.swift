// : Playground - noun: a place where people can play

import Cocoa

var restaurnt = ["咖啡胡同", "霍米", "茶.家", "洛伊斯咖啡", "贝蒂生蚝", "福奇餐馆", "阿波画室", "伯克街面包坊", "黑氏巧克力", "惠灵顿雪梨", "北州", "布鲁克林塔菲", "格雷厄姆大街肉", "华夫饼 & 沃夫", "五叶", "眼光咖啡", "忏悔", "巴拉菲娜", "多尼西亚", "皇家橡树", "泰咖啡"]

var restaurnt_image =
	["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]

var restaurnt_location = ["香港", "香港", "香港", "香港", "香港", "香港", "香港", "悉尼", "悉尼", "悉尼", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "纽约", "伦敦", "伦敦", "伦敦", "伦敦"]

var restaurnt_type = ["咖啡 & 茶店", "咖啡", "茶屋", "奥地利式 & 休闲饮料", "法式", "面包房", "面包房", "巧克力", "咖啡", "美式 & 海鲜", "美式", "美式", "早餐 & 早午餐", "法式 & 茶", "咖啡 & 茶", "拉丁美式", "西班牙式", "西班牙式", "西班牙式", "英式", "泰式"]

var goRestaurnt = [Bool](count: 21, repeatedValue: false);

for i in 0..<restaurnt.count {
	print("Restaurant(name:\"\(restaurnt[i])\",type:\"\(restaurnt_type[i])\",location:\"\(restaurnt_location[i])\",image:\"\(restaurnt_image[i])\",isVisited:\(goRestaurnt[i]))", ",")
}
