//
//  ReportBugViewController.swift
//  Jundera
//
//  Created by Josh Naylor on 11/1/18.
//  Copyright © 2018 Josh Naylor. All rights reserved.
//  Allows user to report a bug via email.

import UIKit
import MessageUI

class ReportBugViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackButton()
    }

    @IBAction func reportBugEmail(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let emailTitle = "Reporting Bug or Issue"
            let toRecipents = ["info@balapoint.com"]
            let mc: MFMailComposeViewController = MFMailComposeViewController()
            mc.mailComposeDelegate = self
            mc.setSubject(emailTitle)
            mc.setToRecipients(toRecipents)
            self.present(mc, animated: true, completion: nil)
        } else {
            print("Unable to open mail app")
            let myalert = UIAlertController(title: "Oops!", message: "There was an issue opening your mail app. Please check your settings on your device.", preferredStyle: UIAlertControllerStyle.alert)
            myalert.addAction(UIAlertAction(title: "Okay", style: .cancel) { (action:UIAlertAction!) in
                print("Cancel")
            })
            
            self.present(myalert, animated: true)
        }
    }
    
    func mailComposeController(_ controller:MFMailComposeViewController, didFinishWith result:MFMailComposeResult, error:Error?) {
        switch result {
        case .cancelled:
            print("Mail cancelled")
        case .saved:
            print("Mail saved")
        case .sent:
            print("Mail sent")
        case .failed:
            print("Mail sent failure: \(String(describing: error?.localizedDescription))")
        default:
            break
        }
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
