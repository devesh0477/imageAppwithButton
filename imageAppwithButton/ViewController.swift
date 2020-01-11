//
//  ViewController.swift
//  imageAppwithButton
//
//  Created by Devesh Verma on 2020-01-11.
//  Copyright © 2020 Devesh Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
     var indexImage = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    var imagesArray = [ #imageLiteral(resourceName: "image6") , #imageLiteral(resourceName: "image8") , #imageLiteral(resourceName: "image1") , #imageLiteral(resourceName: "image10") , #imageLiteral(resourceName: "image9") , #imageLiteral(resourceName: "image2") , #imageLiteral(resourceName: "image5") , #imageLiteral(resourceName: "image3") , #imageLiteral(resourceName: "image4") , #imageLiteral(resourceName: "image7") ]
    


    @IBAction func firstButton(_ sender: Any) {
        
        imageView.image = imagesArray[0]
    }
    
    
    
    @IBAction func previousButton(_ sender: Any) {
        
        if ( indexImage < imagesArray.count) {
            indexImage = indexImage - 1;
            if ( indexImage == imagesArray.count) {
                indexImage = 0
            }
            imageView.image = imagesArray[indexImage]
           
        }
            
        }
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        if ( indexImage < imagesArray.count) {
            indexImage = indexImage + 1;
            if ( indexImage == imagesArray.count) {
                indexImage = 0
            }
            imageView.image = imagesArray[indexImage]
           
        }

    }
    
    
    @IBAction func lastButton(_ sender: Any) {
        
        imageView.image = imagesArray[imagesArray.count - 1]
    }
    
}

