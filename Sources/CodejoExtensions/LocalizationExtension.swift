//
//  LocalizationExtension.swift
//  Codejo
//
//  Created by Brandon T on 4/26/19.
//  Copyright © 2019 V Shred LLC. All rights reserved.
//

import UIKit

public extension UILabel {

    @IBInspectable var localizedKey: String? {
        get {
            return text
        }
        set {
            if let value = newValue {
                text = NSLocalizedString(value, comment: "")
            }
        }
    }

}

@IBDesignable public extension UIButton {

    @IBInspectable var localizedKey: String {
        get {
            return self.titleLabel?.text ?? ""
        }
        set {
            self.setTitle(NSLocalizedString(newValue, comment: ""), for: .normal)
        }
    }

}

public extension UITextField {

    @IBInspectable var placeholderLocalizedKey: String? {
        get {
            return placeholder
        }
        set {
            if let value = newValue {
                placeholder = NSLocalizedString(value, comment: "")
            }
        }
    }

}

public extension UINavigationItem {

    @IBInspectable var localizedKey: String {
        get {
            return title ?? ""
        }
        set {
            title = NSLocalizedString(newValue, comment: "")
        }
    }

}

public extension UIBarItem {

    @IBInspectable var localizedKey: String {
        get {
            return title ?? ""
        }
        set {
            title = NSLocalizedString(newValue, comment: "")
        }
    }

}
