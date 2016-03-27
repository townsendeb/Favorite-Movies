//
//  Movies+CoreDataProperties.swift
//  favoriteMovies
//
//  Created by Eric Townsend on 1/22/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movies {

    @NSManaged var title: String?
    @NSManaged var descrip: String?
    @NSManaged var link: String?
    @NSManaged var image: NSData?

}
