//
//  ViewController.swift
//  Gallery
//
//  Created by iFlame on 8/31/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    @IBOutlet weak var MenuClick: UIBarButtonItem!
    @IBOutlet weak var CollectionView: UICollectionView!
    
    // MARK: - Collection Variable
    var arr : [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var arr1 : [String] = ["Good Morning","Good Night","God","Couple","Baby","Car","Mahendi","Ship","Ring","Rangoli"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if self.revealViewController() != nil {
            MenuClick.target = self.revealViewController()
            MenuClick.action = Selector("revealToggle:")
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
    // MARK: - Collection View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCell
        cell.MyImage.image = UIImage(named: arr[indexPath.row] + ".jpg")
        cell.Lbl.text = self.arr1[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if indexPath.row == 0
        {
            performSegue(withIdentifier: "MorningController", sender: self)
        }
        else if indexPath.row == 1
        {
            performSegue(withIdentifier: "NightController", sender: self)
        }
        else if indexPath.row == 2
        {
            performSegue(withIdentifier: "GodController", sender: self)
        }
        else if indexPath.row == 3
        {
            performSegue(withIdentifier: "CoupleController", sender: self)
        }
        else if indexPath.row == 4
        {
            performSegue(withIdentifier: "BabyController", sender: self)
        }
        else if indexPath.row == 5
        {
            performSegue(withIdentifier: "CarController", sender: self)
        }
        else if indexPath.row == 6
        {
            performSegue(withIdentifier: "MahendiController", sender: self)
        }
        else if indexPath.row == 7
        {
            performSegue(withIdentifier: "ShipController", sender: self)
        }
        else if indexPath.row == 8
        {
            performSegue(withIdentifier: "RingController", sender: self)
        }
        else if indexPath.row == 9
        {
            performSegue(withIdentifier: "RangoliController", sender: self)
        }
    }
    
    
    // MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: (UIScreen.main.bounds.width-10)/2, height: (UIScreen.main.bounds.width-10)/2)
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
