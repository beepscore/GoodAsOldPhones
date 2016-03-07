//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Steve Baker on 3/5/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    // we don't have image-cell0, so use image-cell1
    var products : [Product]?

    var selectedRow : NSInteger = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        products = [ Product.init(name: "1907 Wall Set",
            imageName: "phone-fullscreen1", cellImageName: "image-cell1"),
            Product.init(name: "1921 Dial Phone",
                imageName: "phone-fullscreen2", cellImageName: "image-cell2"),
            Product.init(name: "1937 Desk Set", imageName: "phone-fullscreen3", cellImageName: "image-cell3"),
            Product.init(name: "1984 Motorola Portable", imageName: "phone-fullscreen4", cellImageName: "image-cell4")
        ]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if products == nil {
            return 0
        }
        return products!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
            forIndexPath: indexPath)
        
        if let product = products?[indexPath.row] {
            cell.textLabel?.text = product.name
            cell.imageView?.image = UIImage(named: (product.cellImageName)!)
        }
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ShowProduct" {
            let productViewController = segue.destinationViewController as? ProductViewController
            
            guard let productCell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(productCell) else {
                    return
            }

            // prepareForSegue gets called before tableView didSelectRowAtIndexPath,
            // so can't use didSelectRowAtIndexPath to set a variable for use by prepareForSegue
            // Instead, use tableView indexPathForCell
            productViewController?.product = products![indexPath.row]
        }
    }

}
