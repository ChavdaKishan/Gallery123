//
//  RateViewController.swift
//  Gallery
//
//  Created by iFlame on 9/25/17.
//  Copyright © 2017 LCCA. All rights reserved.
//

import UIKit
import MessageUI

class RateViewController: UIViewController,MFMailComposeViewControllerDelegate
{
    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var Btn2: UIButton!
    @IBOutlet weak var Btn3: UIButton!
    @IBOutlet weak var Btn4: UIButton!
    @IBOutlet weak var Btn5: UIButton!
    
    @IBOutlet weak var Lbl: UILabel!
    @IBOutlet weak var Txt: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Btn1Click(_ sender: Any)
    {
        Btn1.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn2.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Btn3.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Btn4.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Btn5.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Lbl.text = ""
        Lbl.text = "1.0"
    }
    @IBAction func Btn2Click(_ sender: Any)
    {
        Btn1.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn2.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn3.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Btn4.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Btn5.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Lbl.text = ""
        Lbl.text = "2.0"
    }
    @IBAction func Btn3Clicik(_ sender: Any)
    {
        Btn1.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn2.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn3.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn4.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Btn5.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Lbl.text = ""
        Lbl.text = "3.0"
    }
    @IBAction func Btn4Click(_ sender: Any)
    {
        Btn1.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn2.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn3.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn4.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn5.setImage(UIImage(named: "GoldStarEmpty"), for: .normal)
        Lbl.text = ""
        Lbl.text = "4.0"
    }
    @IBAction func Btn5Click(_ sender: Any)
    {
        Btn1.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn2.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn3.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn4.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Btn5.setImage(UIImage(named: "GoldStarFilled"), for: .normal)
        Lbl.text = ""
        Lbl.text = "5.0"
    }
    
    @IBAction func CancelClick(_ sender: Any)
    {
        let back = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(back, animated: true)
    }
    @IBAction func SendClick(_ sender: Any)
    {
        
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
