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
    let phones = [("phone a", "image-cell1"),
        ("phone b", "image-cell1"),
        ("1937 Desk Phone", "image-cell2"),
        ("phone d", "image-cell3"),
        ("phone e", "image-cell4")
    ]

    var selectedRow : NSInteger = 0

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
            forIndexPath: indexPath)
        cell.textLabel?.text = phones[indexPath.row].0
        cell.imageView?.image = UIImage(named: phones[indexPath.row].1)
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        // prepareForSegue gets called before tableView didSelectRowAtIndexPath,
        // so use sender to get info
        let productCell = sender as! UITableViewCell

        if segue.identifier == "ShowProduct" {
            let productViewController = segue.destinationViewController as? ProductViewController
            productViewController?.productName = productCell.textLabel!.text
        }
    }

}
