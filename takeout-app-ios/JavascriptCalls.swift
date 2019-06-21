//
//  JavascriptCalls.swift
//  takeout-app-ios
//
//  Created by David Guzman on 22/05/2019.
//  Copyright © 2019 University College London. All rights reserved.
//

struct JavascriptCalls {
    
    static let downloadData: [String] = [
        /*
        "var myActivity = document.querySelector(\"input[name='My Activity']\");",
        "var callback = function(mutationList, observer) { for (var mutation of mutationList) { console.log('A child node has been added or removed') } };",
        "var observer = new MutationObserver(callback);",
        "observer.observe(myActivity, {attributes: true, childList: true} );",
        "myActivity.outerHTML;",
 */
        "document.querySelectorAll(\".ixT8Dd > button[jsname='UylMne']\")[0].click()", // Click Deselect all TODO: check if it's displayed
        
        "document.querySelector(\"div[data-id='maps']\").scrollIntoView();",
        "document.querySelector(\"input[name='My Activity']\").click();",
        "document.querySelector(\"input[name='My Activity']\").checked = true;",
        "document.querySelectorAll(\"div[data-service='my_activity'] button\")[1].click();",
        "document.querySelectorAll(\"button[aria-label='Deselect all']\")[1].scrollIntoView()",
        "document.querySelectorAll(\"button[aria-label='Deselect all']\")[1].click();",
        "document.getElementsByName('Search')[0].click();",
        "document.querySelectorAll(\"div[role='button']\")[9].click();",
        "document.getElementsByTagName('button')[83].click();",
        
        "document.querySelectorAll(\"div[data-source-type='application/x-vnd.google-my-activity'] div[role='option']\")[0].click();",
        "document.querySelectorAll(\"div[data-source-type='application/x-vnd.google-my-activity'] div[role='option']\")[1].click();",
        
        "document.querySelector(\"button[jsname='OCpkoe']\").click(),",
        
        "document.querySelectorAll(\"div[jsname='wQNmvb'][data-value='TEMP']\")[0].click()" /*,
        
        "document.querySelectorAll(\"div[role='option']\")[12].click()",
        "document.querySelectorAll(\"div[role='option']\")[13].click()",
        "document.querySelectorAll(\"div[role='button']\")[8].click()",
        "document.querySelectorAll(\"button[aria-label='Next step']\")[0].click()"
        "document.getElementsByTagName('button')[114].click()" */
    ]
}
