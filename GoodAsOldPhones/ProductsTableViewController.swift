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
    var phones : [(String, String)]?

    var selectedRow : NSInteger = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        phones = [ ("1907 Wall Set", "image-cell1"),
            ("1921 Dial Phone", "image-cell2"),
            ("1937 Desk Set", "image-cell3"),
            ("1984 Motorola Portable", "image-cell4")
        ]
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if phones == nil {
            return 0
        }
        return phones!.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
            forIndexPath: indexPath)
        cell.textLabel?.text = phones![indexPath.row].0
        cell.imageView?.image = UIImage(named: phones![indexPath.row].1)
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
