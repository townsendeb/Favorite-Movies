//
//  Movies.swift
//  favoriteMovies
//
//  Created by Eric Townsend on 1/22/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import UIKit
import Foundation
import CoreData


class Movies: NSManagedObject{

// Insert code here to add functionality to your managed object subclass

    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }
    
}
