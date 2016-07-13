//
//  ViewController.swift
//  webRequest Exercise
//
//  Created by Jason McCoy on 7/13/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    var webView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        
        let frame = CGRect(x: 0, y: 0, width: container.bounds.width, height: container.bounds.height)
        webView.frame = frame
        
        let urlStr = ""
        let url = URL(string: urlStr)
        let request = NSURLRequest(URL: url)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

