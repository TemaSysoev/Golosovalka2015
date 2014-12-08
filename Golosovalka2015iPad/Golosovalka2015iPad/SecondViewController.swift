//
//  SecondViewController.swift
//  Golosovalka2015
//
//  Created by Tema Sysoev on 05/12/14.
//  Copyright (c) 2014 Tema Sysoev. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet weak var firsttext: UITextField!
    
    @IBOutlet weak var sharetext: UIButton!
    @IBOutlet weak var buttonshare: UIButton!
    @IBOutlet weak var secondtext: UITextField!
    @IBOutlet weak var thtext: UITextField!
    @IBOutlet weak var ftext: UITextField!
    @IBOutlet weak var fifthtext: UITextField!
    @IBOutlet weak var stext: UITextField!
    @IBOutlet weak var setext: UITextField!
    @IBOutlet weak var etext: UITextField!
    @IBOutlet weak var ntext: UITextField!
    @IBOutlet weak var ttext: UITextField!
    @IBOutlet weak var eltext: UITextField!
    @IBOutlet weak var twtext: UITextField!
    @IBOutlet weak var thitext: UITextField!
    @IBOutlet weak var fotext: UITextField!
    @IBOutlet weak var fitext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            }
    @IBAction func shareText(sender: UIButton) {
        let activityViewController = UIActivityViewController(
            activityItems: [firsttext.text, secondtext.text, thtext.text,ftext.text, fifthtext.text, stext.text, setext.text, etext.text, ntext.text, ttext.text, eltext.text, twtext.text, thitext.text, fotext.text, fitext.text as NSString],
            applicationActivities: nil)
        
        
        presentViewController(activityViewController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
        firsttext.delegate = self
        func textFieldShouldReturn(textField: UITextField!) -> Bool {
            firsttext.resignFirstResponder()
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

