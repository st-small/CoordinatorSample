//
//  Storyboarded.swift
//  CoordinatorSample
//
//  Created by Stanly Shiyanovskiy on 18.06.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    associatedtype vController = Self where vController: UIViewController
    static func instantiate() -> vController
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> vController {

        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self.vController
    }
    
}
