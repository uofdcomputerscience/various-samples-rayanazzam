//
//  ViewController.swift
//  SingleImage
//
//  Created by Russell Mirabelli on 10/3/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageURLString = "https://udallas.edu/news/_news_images/KatePalla_Uganda_WG_3_WebStory_400x500.jpg"
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let session = URLSession(configuration: .ephemeral)
        let task = session.dataTask(with: URL(string: imageURLString)!) { (data, response, error) in
            if let data = data {
                let image = UIImage(data: data)
                DispatchQueue.main.async {
                    self.imageView.image = image
                }
            }
        }
        task.resume()
    }


}

