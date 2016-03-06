//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Steve Baker on 3/5/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell",
            forIndexPath: indexPath)
        cell.textLabel?.text = "Phone type \(indexPath.row)"
        cell.imageView?.image = UIImage(named: "image-cell\(indexPath.row)")
        return cell
    }
}
