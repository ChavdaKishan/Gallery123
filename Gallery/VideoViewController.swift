//
//  VideoViewController.swift
//  Gallery
//
//  Created by iFlame on 9/25/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController
{
    
    @IBOutlet weak var WebView: UIWebView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        getVideo(videoCode: "v1T2bWZepxQ")
    }
    
    @IBAction func BackClick(_ sender: Any)
    {
        let back = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(back, animated: true)
    }
    
    func getVideo(videoCode:String)
    {
        let urlVideo = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        WebView.loadRequest(URLRequest(url: urlVideo!))
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
