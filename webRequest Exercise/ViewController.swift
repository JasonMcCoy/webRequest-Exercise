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
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let frame = CGRect(x: 0, y: 0, width: container.bounds.width, height: container.bounds.height)
        webView.frame = frame
        
        loadRequest(urlStr: "http://www.vox.com/2016/7/12/12159304/pokemon-go-game-ios-android")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlStr: String) {
        let url = URL(string: urlStr)
        let request = NSURLRequest(url: url!)
        webView.load(request as URLRequest)
    }
    
    @IBAction func loadPortfolio(_ sender: AnyObject) {
        loadRequest(urlStr: "http://www.McCoyGames.com")
    }
    
    @IBAction func loadMyBlog(_ sender: AnyObject) {
        loadRequest(urlStr: "http://NerdOrGeek.com")
    }
    
    @IBAction func loadPrankVideo(_ sender: AnyObject) {
        loadRequest(urlStr: "https://www.youtube.com/watch?v=5zk5JriNbZc")
    }
    
    
    /* Hide Status Bar */
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    /* End Hide Status Bar */
    
}

