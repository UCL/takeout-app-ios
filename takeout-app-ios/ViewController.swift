//
//  ViewController.swift
//  takeout-app-ios
//
//  Created by David Guzman on 22/05/2019.
//  Copyright © 2019 University College London. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var wkWebView: WKWebView!
    let takeoutAddress: String = "https://takeout.google.com"
    let takeoutTitle: String = "Download your data"
    var isTakeoutPage: Bool = false
    
    override func loadView() {
        print(#function)
        let webConfiguration = WKWebViewConfiguration()
        wkWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        wkWebView.navigationDelegate = self
        view = wkWebView
    }
    
    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
        
        let takeoutUrl = URL(string: takeoutAddress)!
        wkWebView.load(URLRequest(url: takeoutUrl))
        wkWebView.addObserver(self, forKeyPath: #keyPath(WKWebView.title), options: .new, context: nil)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print(#function)
        if keyPath == "title", let title = wkWebView.title {
            if title == takeoutTitle {
                isTakeoutPage = true
            }
            NSLog(title)
        }
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        NSLog("Start loading");
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        NSLog("End loading");
        print("\(webView.customUserAgent ?? "no user agent")")
        if isTakeoutPage {
            for jsCall in JavascriptCalls.downloadData {
                wkWebView.evaluateJavaScript(jsCall, completionHandler: {(result, error) in print("\(result ?? error ?? "undefined")")})
            }
        }
        NSLog("Ended evaluation of Javascript code")
    }

}

