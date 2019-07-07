//
//  TableViewCell.swift
//  TableviewInCollectionView
//
//  Created by sadegh on 7/7/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collectionview: UICollectionView!

    var imageArr :[UIImage] = [#imageLiteral(resourceName: "man"),#imageLiteral(resourceName: "man"),#imageLiteral(resourceName: "flower"),#imageLiteral(resourceName: "man"),#imageLiteral(resourceName: "flower"),#imageLiteral(resourceName: "man"),#imageLiteral(resourceName: "flower"),#imageLiteral(resourceName: "man"),#imageLiteral(resourceName: "flower")]
    override func awakeFromNib() {
        self.collectionview.delegate = self
        self.collectionview.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "colCell", for: indexPath) as! CollectionViewCell
        cell.thisImage.image = imageArr[indexPath.row]
        
        return cell
        
    }
    

    
}
