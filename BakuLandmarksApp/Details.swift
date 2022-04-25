//
//  Details.swift
//  BakuLandmarksApp
//
//  Created by Fuad Karimli on 4/25/22.
//

import UIKit

class Details: UIViewController {

    @IBOutlet var detailsImageView: UIImageView!
    
    @IBOutlet var detailsLabel: UILabel!
    
    var selectedImage : String!
    var selectedLabel : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        detailsImageView.image = UIImage(named: selectedImage)
        detailsLabel.text = selectedLabel
       
    }
    


}
