//
//  UserInfo.swift
//  TableviewInCollectionView
//
//  Created by sadegh on 7/6/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import Foundation
import UIKit


var arrayOfTblViewAll:[TblView] = [TblView]()

struct CollectionviewInside {
    var name:String
    var price:String
    var thisImage:UIImage?
    var isDiscount:Bool

}
struct TblView{
    var title:String?
    var inside:CollectionviewInside
}
