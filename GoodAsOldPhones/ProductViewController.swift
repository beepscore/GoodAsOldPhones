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

    @IBOutlet weak var productImageView: UIImageView!

    var product: Product?

    override func viewDidLoad() {
        super.viewDidLoad()
        if product != nil {
            productNameLabel.text = product!.name
            productImageView.image = UIImage(named: (product!.imageName)!)
        }
    }

    @IBAction func addToCartButtonTapped(sender: AnyObject) {
        print("add tapped")
    }

}
