//
//  ViewController.swift
//  SeeFood
//
//  Created by Infinity Code on 10/31/22.
//

import UIKit
import CoreML
import  Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    // created a new instance of the object
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set all the properties of that object
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let userPickerImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = userPickerImage
        }
        
        imagePicker.dismiss(animated: true)
        
        
        
    }
    

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        
        // when camera icon is tapped we are asking the app to present this imagePicker to the user so they can use the camera or photo album
        present(imagePicker, animated: true, completion: nil)
    }
    
}

