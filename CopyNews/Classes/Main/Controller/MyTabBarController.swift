//
//  MyTabBarController.swift
//  CopyNews
//
//  Created by Jason on 01/03/2018.
//  Copyright © 2018 Jason. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabbar = UITabBar.appearance()
        tabbar.theme_tintColor = "colors.tabberTintColor"
        tabbar.theme_barTintColor = "colors.cellBackgroundColor"
        //add child controller
        addChildViewControllers()
        
        NotificationCenter.default.addObserver(self, selector: #selector(receiveDayOrNightButtonClickednsnot), name: NSNotification.Name(rawValue:"dayOrNightButtonClicked"), object: nil)
    }
    
   @objc func receiveDayOrNightButtonClickednsnot(notification:NSNotification){
        let selected = notification.object as! Bool
        if selected {
            //setting night
            for childController in childViewControllers {
                switch childController.title! {
                case "首页":
                    setNightChildController(controller: childController, imageName: "home");
                case "西瓜视频":
                    setNightChildController(controller: childController, imageName: "video")
                case "小视频":
                    setNightChildController(controller: childController, imageName: "huoshan")
                case "微头条":
                    setNightChildController(controller: childController, imageName: "weitoutiao")
                case "":
                    setNightChildController(controller: childController, imageName: "redpackage")
                default:
                    break
                }
                
            }
        
        } else {
            for childController in childViewControllers {
                switch childController.title! {
                case "首页":
                    setDayChildController(controller: childController, imageName: "home")
                case "西瓜视频":
                    setDayChildController(controller: childController, imageName: "video")
                case "小视频":
                    setDayChildController(controller: childController, imageName: "huoshan")
                case "微头条":
                    setDayChildController(controller: childController, imageName: "weitoutiao")
                case "":
                    setDayChildController(controller: childController, imageName: "redpackage")
                default:
                    break
                    
                    
                }
                
            }
            
        }
        
    }

    //添加子控制器
    private func addChildViewControllers(){
        setChildViewController(HomeViewController(), title: "首页", imageName: "home");
        setChildViewController(VideoViewController(), title: "西瓜视频", imageName: "video")
        
        
    }
    
    private func setChildViewController(_ childController:UIViewController,title:String,imageName:String){
        if UserDefaults.standard.bool(forKey: isNight) {
            setNightChildController(controller: childController, imageName: imageName)
        } else {
            setDayChildController(controller: childController, imageName: imageName)
        }
        childController.title = title
        let navVC = MyNavigationController(rootViewController: childController)
        addChildViewController(navVC)
        
    }
    
    private func setDayChildController(controller:UIViewController,imageName:String){
        controller.tabBarItem.image = UIImage(named:imageName+"_tabbar_32x32_")
        controller.tabBarItem.selectedImage = UIImage(named: imageName + "_tabbar_press_32x32_")
        
    }
    
    private func setNightChildController(controller:UIViewController,imageName:String){
        controller.tabBarItem.image = UIImage(named:imageName+"_tabbar_night_32x32_")
        controller.tabBarItem.selectedImage = UIImage(named: imageName + "_tabbar_press_night_32x32_")
        
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
