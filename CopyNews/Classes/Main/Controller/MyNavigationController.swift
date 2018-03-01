//
//  MyNavigationController.swift
//  CopyNews
//
//  Created by Jason on 01/03/2018.
//  Copyright © 2018 Jason. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navigationBar = UINavigationBar.appearance()
        navigationBar.theme_tintColor = "colors.black"
        navigationBar.setBackgroundImage(UIImage(named: "navigation_background" + (UserDefaults.standard.bool(forKey: isNight) ? "_night" : "")), for: .default)
        NotificationCenter.default.addObserver(self, selector: #selector(receiveDayOrNightButtonClicked), name: NSNotification.Name(rawValue:"dayOrNightButtonClicked"), object: nil)
    }
    @objc func receiveDayOrNightButtonClicked(notification:NSNotification){
        navigationBar.setBackgroundImage(UIImage(named:"navigation_background" + (notification.object as! Bool ? "_night" : "")), for: .default)
        
    }

    @objc private func navigationBack(){
        popViewController(animated: true)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
