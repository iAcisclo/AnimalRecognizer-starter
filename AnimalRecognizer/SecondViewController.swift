//
//  SecondViewController.swift
//  AnimalRecognizer
//
//  Created by Ignacio Acisclo on 22/05/2020.
//  Copyright © 2020 iAcisclo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    let imageProvider = ImageProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        next(nil)
    }

    @IBAction func next(_ sender: Any?) {
        self.imageView.image = nil
        imageProvider.animalImage(type: .random, onCompletion: { image in
            self.imageView.image = image
        })
    }
    
    @IBAction func tag(_ sender: Any) {
        
    }
}

