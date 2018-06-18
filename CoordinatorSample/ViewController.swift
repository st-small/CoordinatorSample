//
//  ViewController.swift
//  CoordinatorSample
//
//  Created by Stanly Shiyanovskiy on 18.06.18.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

