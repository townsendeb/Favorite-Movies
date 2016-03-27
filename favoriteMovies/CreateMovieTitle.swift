//
//  CreateMovieTitle.swift
//  favoriteMovies
//
//  Created by Eric Townsend on 1/22/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CreateMovieTitle: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var enterTitle: UITextField!
    @IBOutlet weak var enterLink: UITextField!
    @IBOutlet weak var enterDesc: UITextField!
    @IBOutlet weak var addImage: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        addImage.layer.cornerRadius = 4.0
        addImage.clipsToBounds = true
        
        imageButton.hidden = false
}

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String: AnyObject]?) {
        
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        addImage.image = image
    }
    
    //when you click the "add image" button this presents the image picker so you can select from iphone
    @IBAction func addImageButton (sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
        imageButton.hidden = true
        
    }
    
    @IBAction func createMovieButton(sender: AnyObject!) {
        if let title = enterTitle.text where title != "" {
            
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movies", inManagedObjectContext: context)!
            let movie = Movies(entity: entity, insertIntoManagedObjectContext: context)
            
            
            //when button is pressed enter all info
            movie.title = title
            movie.descrip = enterDesc.text
            movie.link = enterLink.text
            movie.setMovieImage(addImage.image!)
            
            context.insertObject(movie)
            do {
                try context.save()
            } catch {
                print("Could not save movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
}