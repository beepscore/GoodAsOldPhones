//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Steve Baker on 3/4/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!

    @IBAction func addToCartButtonTapped(sender: AnyObject) {
        print("add tapped")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
