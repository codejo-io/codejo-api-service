//
//  UIResponder.swift
//  vshred-ios
//
//  Created by Cole James on 4/5/20.
//  Copyright © 2020 V Shred LLC. All rights reserved.
//

import UIKit

extension UIResponder {

    var parentViewController: UIViewController? {
        return next as? UIViewController ?? next?.parentViewController
    }

}
