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
    
    @IBAction func Sharebtnclick(_ sender: Any)
    {
        let theButton = sender as! UIButton
        let bound = theButton.bounds
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: {
            theButton.bounds = CGRect(x: bound.origin.x - 20, y: bound.origin.y, width: bound.size.width + 60, height: bound.size.height)
        }) { (success: Bool) in
            if success
            {
                UIView.animate(withDuration: 0.5, animations: {
                    theButton.bounds = bound
                })
            }
        }
        
        let activityVC = UIActivityViewController(activityItems: [self.IMGShow.image], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
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
