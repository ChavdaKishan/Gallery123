//
//  ViewController.swift
//  Gallery
//
//  Created by iFlame on 8/31/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDataSource,UITableViewDelegate
{
    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var LeftView: UIView!
    @IBOutlet weak var LeadingConstraints: NSLayoutConstraint!
    
    // MARK: - Collection Variable
    var arr : [String] = ["1","2","3","4","5","6","7","8","9","10"]
    var arr1 : [String] = ["Good Morning","Good Night","God","Couple","Baby","Car","Mahendi","Ship","Ring","Rangoli"]
    
    // MARK: - Slide Variable
    var Lmod = false
    
    // MARK: - Table Variable
    var array1 = [UIImage(named:"1")!,UIImage(named:"2")!,UIImage(named:"3")!,UIImage(named:"4")!,UIImage(named:"5")!]
    var array : [String] = ["Home","Photo","Video","Rate","AboutUs"]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
    
    // MARK: - Slide View
    @IBAction func LeftClick(_ sender: Any)
    {
        if (Lmod)
        {
            LeadingConstraints.constant = -700
            animation()
        }
        else
        {
            LeadingConstraints.constant = 0
            animation()
        }
        Lmod = !Lmod
    }
    
    
    // MARK: - Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MyTableCell
        cell1.LblTable.text = array[indexPath.row]
        cell1.ImageTable.image = array1[indexPath.row]
        return cell1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.row == 0
        {
            performSegue(withIdentifier: "HomeVCTable", sender: self)
        }
        else if indexPath.row == 1
        {
            performSegue(withIdentifier: "PhotoVCTable", sender: self)
        }
        else if indexPath.row == 2
        {
            performSegue(withIdentifier: "VideoVCTable", sender: self)
        }
        else if indexPath.row == 3
        {
            performSegue(withIdentifier: "RateVCTable", sender: self)
        }
        else if indexPath.row == 4
        {
            performSegue(withIdentifier: "AboutUsVCTable", sender: self)
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animation()
    {
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
    }
}
