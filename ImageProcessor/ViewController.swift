//
//  ViewController.swift
//  ImageProcessor
//
//  Created by Khalid Asad on 11/25/19.
//  Copyright © 2019 Khalid Asad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var viewTap: UIView!
    
    var tapGesture = UITapGestureRecognizer()
    var image = UIImage(named: "stockImage")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.myviewTapped(_:)))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        viewTap.addGestureRecognizer(tapGesture)
        viewTap.isUserInteractionEnabled = true

        imageView.image = image
    }

    @objc func myviewTapped(_ sender: UITapGestureRecognizer) {
        imageView.image = ImageFilter().applyFilter(.grayscale, to: image)
    }
}

