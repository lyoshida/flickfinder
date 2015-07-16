//
//  ViewController.swift
//  flickfinder
//
//  Created by Luis Yoshida on 7/12/15.
//  Copyright © 2015 Msen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var phraseTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    @IBOutlet weak var photoTitleLabel: UILabel!

    @IBAction func searchPhotosByPhraseButtonTouchUp(sender: UIButton) {
    }
    
    @IBAction func searchPhotosByLatLonButtonTouchUp(sender: UIButton) {
    }
    
}

