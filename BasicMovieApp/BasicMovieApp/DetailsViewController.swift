//
//  DetailsViewController.swift
//  BasicMovieApp
//
//  Created by Zülal Sarıoğlu on 6.10.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
    
    var gelenImage = ""
    var gelenName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImage.image = UIImage(named: gelenImage)
        movieName.text = gelenName
        
        
    }

}
