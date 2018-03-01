//
//  HomeViewController.swift
//  CopyNews
//
//  Created by Jason on 01/03/2018.
//  Copyright © 2018 Jason. All rights reserved.
//

import UIKit
import SGPagingView
import RxSwift
import RxCocoa

class HomeViewController: UIViewController {

    //title/content
    private var pageTitleView:SGPageTitleView?
    private var pageContentView:SGPageContentView?
    
    //custom navigation style
    private lazy var navigationBar = HomeViewController
    private lazy var disposeBag = DisposeBag()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
