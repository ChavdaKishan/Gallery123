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
    @IBOutlet weak var LikeBtn: UIButton!
    
    var img : UIImage? = nil
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if (self.img != nil)
        {
            self.IMGShow.image = self.img
        }
    }
    override func viewWillAppear(_ animated: Bool)
    {
        LikeBtn.isHidden = true
    }
    
    // MARK : - Share Button
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
    
    // MARK : - Gesture
    @IBAction func TapGesture(_ sender: UITapGestureRecognizer)
    {
        if LikeBtn.isHidden == true
        {
            LikeBtn.isHidden = false
            animation1()
            Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(animation), userInfo: nil, repeats: false)
        }
    }
    @IBAction func PinchGesture(_ sender: UIPinchGestureRecognizer)
    {
        if let view = sender.view
        {
            view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1.0
        }
    }
    @IBAction func PanGesture(_ sender: UIPanGestureRecognizer)
    {
        let translate = sender.translation(in: view)
        sender.setTranslation(.zero, in: view)
        let image = sender.view as! UIImageView
        image.center = CGPoint(x: image.center.x + translate.x, y: image.center.y + translate.y)
    }
    
    // MARK : - Animation Function
    func animation1()
    {
        LikeBtn.transform = CGAffineTransform(scaleX: 2, y: 2)
        LikeBtn.alpha = 0
        UIView.animate(withDuration: 0.3, animations: {
            self.LikeBtn.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            self.LikeBtn.alpha = 1
        })
    }
    func animation()
    {
        LikeBtn.isHidden = true
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
