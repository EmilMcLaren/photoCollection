//
//  PhotoViewController.swift
//  SB Photo
//
//  Created by Emil on 01.08.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    // MARK: - make image instance(экземляр)
    var image: UIImage?
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - add image type to screen
        imageView.image = image
    }

    
    @IBAction func shareAction(_ sender: Any) {
        
        // MARK: - make for share tap ActivityController
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        if (shareController.completionWithItemsHandler != nil) {
            print("Sucsessfull")
        }
        present(shareController, animated: true, completion: nil)
    }
}
    
