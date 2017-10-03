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
    
    var feedback = String()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        feedback = Txt.text!
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
        let mailComposeViewController = configureMailController()
        if MFMailComposeViewController.canSendMail()
        {
            self.present(mailComposeViewController, animated: true, completion: nil)
        }
        else
        {
            showMailError()
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?)
    {
        controller.dismiss(animated: true, completion: nil)
    }
    
    func configureMailController() -> MFMailComposeViewController
    {
        let mail = MFMailComposeViewController()
        mail.mailComposeDelegate = self
        
        mail.setToRecipients(["chavdakish1996@gmail.com"])
        mail.setSubject("Hello")
        mail.setMessageBody(feedback, isHTML: false)
        
        return mail
    }
    
    func showMailError()
    {
        let Alert = UIAlertController(title: "Could not send email", message: "Your device could not send email", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        Alert.addAction(ok)
        self.present(Alert, animated: true, completion: nil)
    }
}
