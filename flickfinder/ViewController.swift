//
//  ViewController.swift
//  flickfinder
//
//  Created by Luis Yoshida on 7/12/15.
//  Copyright © 2015 Msen. All rights reserved.
//

import UIKit
import Foundation

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
        
        let url:String = "https://api.flickr.com/services/rest/?" +
            "method=flickr.photos.search&" +
            "api_key=3f859bb8101d02cc700952b1d4e215e6&" +
            "text=baby+asian+elephant&" +
            "format=json&" +
            "nojsoncallback=1"
        
        var request = NSURLRequest(URL: NSURL(string: url)!)
        
        var session = NSURLSession.sharedSession()
        var task = session.dataTaskWithRequest(request) {
            (data, response, downloadError) -> Void in
            
            if let error = downloadError {
                print("Could not complete the request \(error)")
            } else {
                var parsingError: NSError? = nil
                do {
                    let parsedResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! NSDictionary
                    print(parsedResult)

                } catch _ {}
                
                    
                
            }
        }
        
        task!.resume()
        
        /*
        https://api.flickr.com/services/rest/?
        method=flickr.photos.search&
        api_key=df52b9fa8e1632a530e801c286f20f7c&
        text=baby+asian+elephant&
        format=json&
        nojsoncallback=1
        */
    }
    
    @IBAction func searchPhotosByLatLonButtonTouchUp(sender: UIButton) {
    }
    
}

