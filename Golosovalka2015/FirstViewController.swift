//
//  FirstViewController.swift
//  Golosovalka2015
//
//  Created by Tema Sysoev on 05/12/14.
//  Copyright (c) 2014 Tema Sysoev. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet weak var first_text: UITextField!
    
    @IBOutlet weak var sharetext: UIButton!
    @IBOutlet weak var buttonshare: UIButton!
    @IBOutlet weak var second_text: UITextField!
    @IBOutlet weak var th_text: UITextField!
    @IBOutlet weak var f_text: UITextField!
    @IBOutlet weak var fifth_text: UITextField!
    @IBOutlet weak var s_text: UITextField!
    @IBOutlet weak var se_text: UITextField!
    @IBOutlet weak var e_text: UITextField!
    @IBOutlet weak var n_text: UITextField!
    @IBOutlet weak var t_text: UITextField!
    @IBOutlet weak var scrol1: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.first_text.delegate = self;
        self.second_text.delegate = self;
        self.th_text.delegate = self;
        self.f_text.delegate = self;
        self.fifth_text.delegate = self;
        self.s_text.delegate = self;
        self.se_text.delegate = self;
        self.e_text.delegate = self;
        self.n_text.delegate = self;
        self.t_text.delegate = self;
    }
    @IBAction func shareText(sender: UIButton) {
        let activityViewController = UIActivityViewController(
            activityItems: [first_text.text, second_text.text, th_text.text,f_text.text, fifth_text.text, s_text.text, se_text.text, e_text.text, n_text.text, t_text.text as NSString],
            applicationActivities: nil)
        
        
        presentViewController(activityViewController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
        first_text.delegate = self
        func textFieldShouldReturn(textField: UITextField!) -> Bool {
            first_text.resignFirstResponder()
            var activityViewController:UIActivityViewController?
            
            
            return true
            
        }
    }
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
    
    
}

