//
//  SlideViewController.swift
//  Gallery
//
//  Created by iFlame on 9/21/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit

class SlideViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var arr1 : Array = [String]()
    var arr2 : Array = [UIImage]()
    
    @IBOutlet weak var TitleImg: UIImageView!
    @IBOutlet weak var TableView: UITableView!
    
    @IBOutlet weak var ImgConstraints: NSLayoutConstraint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        arr1 = ["Home","Message","Map","Setting"]
        arr2 = [UIImage(named:"01")!,UIImage(named:"03")!,UIImage(named:"02")!,UIImage(named:"04")!]
        
        TitleImg.layer.borderWidth = 2
        TitleImg.layer.borderColor = UIColor.green.cgColor
        
        TitleImg.layer.cornerRadius = 50
        TitleImg.layer.masksToBounds = false
        TitleImg.clipsToBounds = true
        
        ImgConstraints.constant -= view.bounds.width
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateTable()
    }
    var animation = false
    override func viewDidAppear(_ animated: Bool)
    {
        if !animation
        {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.ImgConstraints.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            animation = true
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell123") as! MyTableCell
        cell.Img.image = arr2[indexPath.row]
        cell.Lblnm.text = arr1[indexPath.row]
        return cell
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateTable()
    {
        TableView.reloadData()
        let cells = TableView.visibleCells
        let hight = TableView.bounds.size.height
        for cell in cells
        {
            cell.transform = CGAffineTransform(translationX: 0, y: hight)
        }
        var delaycounter = 0
        for cell in cells
        {
            UIView.animate(withDuration: 1.25, delay: Double(delaycounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delaycounter += 1
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
