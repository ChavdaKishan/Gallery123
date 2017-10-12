//
//  GenericCollectionViewController.swift
//  Gallery
//
//  Created by iFlame on 10/10/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class GenericCollectionViewController: UICollectionView {
    
   var genericArray = [String]()
    
    func setCollectionArray(genericValue:[String]) {
        self.genericArray = genericValue
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.genericArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell6", for: indexPath) as! MyCell
        //cell.Image6.image = UIImage(named: arr[indexPath.row] + ".jpg")
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
       // self.performSegue(withIdentifier: "CarVC", sender: self)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: (UIScreen.main.bounds.width-20)/3, height: (UIScreen.main.bounds.width-10)/3)
    }

    
}
