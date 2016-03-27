//
//  DetailVC.swift
//  favoriteMovies
//
//  Created by Eric Townsend on 1/22/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import UIKit
import CoreData

class DetailVC: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var movieLink: UILabel!
    @IBOutlet weak var movieCover: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        fetchAndSetResults()
    }
    
    
    func configureCellDetail(detail: Movies) {
    
    titleLabel.text = detail.title
    descLabel.text = detail.descrip
    movieLink.text = detail.link
    movieCover.image = detail.getMovieImage()
    
 }
    
}
