//
//  MovieCell.swift
//  favoriteMovies
//
//  Created by Eric Townsend on 1/22/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import UIKit
import CoreData

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieLink: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(movie: Movies) {
        movieTitle.text = movie.title
        movieDesc.text = movie.descrip
        movieLink.text = movie.link
        movieImage.image = movie.getMovieImage()
        
    }
    
    
}
