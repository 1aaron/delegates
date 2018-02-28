//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Developer on 2/27/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName: String)
}
