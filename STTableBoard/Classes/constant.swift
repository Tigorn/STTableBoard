//
//  constant.swift
//  STTableBoard
//
//  Created by DangGu on 15/11/26.
//  Copyright © 2015年 StormXX. All rights reserved.
//
import UIKit

enum SnapViewStatus {
    case moving
    case origin
}

enum ScrollDirection {
    case left
    case right
    case none
}

enum STTableBoardMode {
    case page
    case scroll
}

enum STTableBoardOrientation {
    case landscape
    case portrait
}

struct TableBoardCommonConstant {
    static let labelFont: UIFont = UIFont.systemFont(ofSize: 17.0)
}

struct BoardHeaderViewConstant {
    static let labelLeading: CGFloat = 10
    static let labelTop: CGFloat = 8
    static let labelBottom: CGFloat = 8
}

extension UIColor {
    static var darkGrayTextColor: UIColor { return UIColor(red: 56/255.0, green: 56/255.0, blue: 56/255.0, alpha: 1.0) }
    static var grayTextColor: UIColor { return UIColor(red: 128/255.0, green: 128/255.0, blue: 128/255.0, alpha: 1.0) }
}

let timerUserInfoTableViewKey = "theTableView"
let leading: CGFloat  = 30.0
let trailing: CGFloat = leading
let top: CGFloat = 20.0
let bottom: CGFloat = top
let pageSpacing: CGFloat = leading / 2
let overlap: CGFloat = pageSpacing * 3
let rotateAngel: CGFloat = .pi / 36
let headerViewHeight: CGFloat = 65
let footerViewHeight: CGFloat = 60
let newBoardButtonViewHeight: CGFloat = 56.0
let newBoardComposeViewHeight: CGFloat = 122.0
let newCellComposeViewTextFieldHeight: CGFloat = 40.0
let newCellComposeViewHeight: CGFloat = 106.0
let scaleForPage: CGFloat = 1.0
let scaleForScroll: CGFloat = 0.5
let defaultScrollViewScrollVelocity: CGFloat = 50.0
let currentBundle = Bundle(for: STTableBoard.self)
let minimumMovingRowInterval: TimeInterval = 0.2
let pageControlHeight: CGFloat = 20.0

//Color
let boardBackgroundColor: UIColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.0)
let tableBoardBackgroundColor: UIColor = UIColor(white: 1.0, alpha: 1.0)
//let tableBoardBackgroundColor: UIColor = UIColor.lightGray
let boardBorderColor: UIColor = UIColor(red: 229.0/255.0, green: 229.0/255.0, blue: 229.0/255.0, alpha: 1.0)
//let boardFooterButtonTitleColor: UIColor = UIColor(red: 166.0/255.0, green: 166.0/255.0, blue: 166.0/255.0, alpha: 1.0)
let currentPageIndicatorTintColor: UIColor = UIColor(red: 184.0/255.0, green: 184.0/255.0, blue: 184.0/255.0, alpha: 1.0)
let pageIndicatorTintColor: UIColor = UIColor(red: 221.0/255.0, green: 221.0/255.0, blue: 221.0/255.0, alpha: 1.0)

// new board button colors
let dashedLineColor: UIColor = UIColor(red: 221.0/255.0, green: 221.0/255.0, blue: 221.0/255.0, alpha: 1.0)
let newBoardButtonBackgroundColor: UIColor = boardBackgroundColor
let newBoardButtonTextColor: UIColor = UIColor(red: 189.0/255.0, green: 189.0/255.0, blue: 189.0/255.0, alpha: 1.0)
let cancelButtonTextColor: UIColor = UIColor(red: 166/255.0, green: 166/255.0, blue: 166/255.0, alpha: 1.0)


var currentDevice: UIUserInterfaceIdiom {
    get {
        return UIDevice.current.userInterfaceIdiom
    }
}

var currentOrientation: STTableBoardOrientation {
    get {
        var orientation: STTableBoardOrientation = .portrait
        switch UIApplication.shared.statusBarOrientation {
        case .portrait, .portraitUpsideDown, .unknown:
            orientation = .portrait
        case .landscapeLeft, .landscapeRight:
            orientation = .landscape
        }
        return orientation
    }
}

var localizedString: [String: String] = [
    "STTableBoard.AddRow": "+",
    "STTableBoard.AddBoard": "+++ ...",
    "STTableBoard.BoardMenuTextViewController.Title": "BoardMenuTextViewController.Title",
    "STTableBoard.EditBoardNameCell.Title": "EditBoardNameCell.Title",
    "STTableBoard.DeleteBoardCell.Title": "DeleteBoardCell.Title阶段",
    "STTableBoard.DeleteBoard.Alert.Message": "DeleteBoard.Alert.Message",
    "STTableBoard.Delete": "Удалиьть",
    "STTableBoard.Cancel": "Отмена",
    "STTableBoard.OK": "ОК",
    "STTableBoard.Create": "Сохранить",
    "STTableBoard.RefreshFooter.text": "Загрузка..."
]
