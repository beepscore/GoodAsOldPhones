//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Steve Baker on 3/5/16.
//  Copyright © 2016 Beepscore LLC. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // In storyboard, scrollView is a sibling of view, not a child
        // Programmatically add scrollView as a subView so it is a child
        view.addSubview(scrollView)
    }

}
