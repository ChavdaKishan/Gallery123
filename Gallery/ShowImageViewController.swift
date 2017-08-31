//
//  ShowImageViewController.swift
//  Gallery
//
//  Created by iFlame on 8/31/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit

class ShowImageViewController: UIViewController
{
    
    @IBOutlet weak var IMGShow: UIImageView!
    
    var img : UIImage? = nil
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if (self.img != nil)
        {
            self.IMGShow.image = self.img
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
