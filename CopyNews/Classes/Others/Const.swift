//
//  Const.swift
//  CopyNews
//
//  Created by Jason on 01/03/2018.
//  Copyright © 2018 Jason. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.main.bounds.width
let scrrenHeight = UIScreen.main.bounds.height

let emojiItemWidth = screenWidth / 7

let BASE_URL = "https://is.snssdk.com"

let isIphoneX: Bool = scrrenHeight == 812 ? true : false

let newsTitleHeight: CGFloat = 40
let kMyHeaderViewHeight: CGFloat = 280
let kUserDetailHeaderBGImageViewHeight: CGFloat = 146

let isNight = "isNight"
/// 关注的用户详情界面 topTab 的按钮的宽度
let topTabButtonWidth: CGFloat = screenWidth * 0.2
/// 关注的用户详情界面 topTab 的指示条的宽度 和 高度
let topTabindicatorWidth: CGFloat = 40
let topTabindicatorHeight: CGFloat = 2

let MyPresentationControllerDismiss = "MyPresentationControllerDismiss"
let NavigationBarConcernButtonClicked = "NavigationBarConcernButtonClicked"
let UserDetailHeaderViewButtonClicked = "UserDetailHeaderViewButtonClicked"
/// 动态图片的宽高
// 图片的宽高
// 1        screenWidth * 0.5
// 2        (screenWidth - 35) / 2
// 3,4,5-9    (screenWidth - 40) / 3
let image1Width: CGFloat = screenWidth * 0.5
let image2Width: CGFloat = (screenWidth - 35) * 0.5
let image3Width: CGFloat = (screenWidth - 40) / 3

/// 从哪里进入问答控制器
enum WendaEnterFrom: String {
    case dongtai = "dongtai"
    case clickHeadline = "click_headline"
    case clickCategory = "click_category"
}

/// 从哪里进入头条
enum TTFrom: String {
    case pull = "pull"
    case loadMore = "load_more"
    case auto = "auto"
    case enterAuto = "enter_auto"
    case preLoadMoreDraw = "pre_load_more_draw"
}

