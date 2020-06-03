//
//  ThemeManager.swift
//  GoodNews
//
//  Created by David Murillo on 6/3/20.
//  Copyright © 2020 MuriTech. All rights reserved.
//

import Foundation
import UIKit

class ThemeManager{
    //Color up the UI
    static func setup(){
        UINavigationBar.appearance().barTintColor = UIColor(displayP3Red: 47/255, green: 54/255, blue: 64/255, alpha: 1.0)
        UINavigationBar.appearance().largeTitleTextAttributes =
            [NSAttributedString.Key.foregroundColor:UIColor.blue]
        UINavigationBar.appearance().titleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}
