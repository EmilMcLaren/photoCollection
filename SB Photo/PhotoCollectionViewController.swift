//
//  PhotoCollectionViewController.swift
//  SB Photo
//
//  Created by Emil on 31.07.2022.
//

import UIKit



class PhotoCollectionViewController: UICollectionViewController {

    let photos = ["1","2","3","4","5","6","7","8","9","10","1","2","3","4","5","6","7","8","9","10","1","2","3","4","5","6","7","8","9","10"]
    
    // MARK: set count cells in stroke
    let itemsPerPath: CGFloat = 3
    let sectionInsert = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        collectionView.showsVerticalScrollIndicator = false
// MARK: ============================
        // MARK: for example (additionally, дополнительно)
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSize(width: 70, height: 70)
//        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
//        layout.minimumLineSpacing = 5
//        layout.minimumInteritemSpacing = 1
//        layout.scrollDirection = .vertical
//
//        collectionView.showsVerticalScrollIndicator = false
// MARK: ============================
        
    }
//MARK: Set photo to 2second screen from segue ===============
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "photoSegue" {
            let photVC = segue.destination as! PhotoViewController
            let cell = sender as! CollViewCell
            photVC.image = cell.myPhotoimageView.image
        }
            
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photos.count
    }

    // MARK: setting of starting cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "viewCell", for: indexPath) as! CollViewCell
    
        let image = photos[indexPath.item]
        let imageViewSet = UIImage(named: image)
        
        cell.myPhotoimageView.image = imageViewSet
        
        return cell
    }
  
}

//--------------------------------------//=
// MARK: make extension with flowlayout //=
//--------------------------------------//=
extension PhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
    // MARK: set (auto) size for cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        // MARK: other setting cells
        let paddingWith = sectionInsert.left * (itemsPerPath + 1)
        let awailableWidth = collectionView.frame.width - paddingWith
        let withItems = awailableWidth / itemsPerPath
        return CGSize(width: withItems, height: withItems)

        //return CGSize(width: 100, height: 50)
    }
    // MARK: set size for cell (from top button, sides4x)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsert
    }


    // MARK: set size for button line size (расстояние между селл по высоте)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        sectionInsert.left
    }


    // MARK: distance between cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        sectionInsert.left
    }
}

































// MARK: ===================================================================================

//--------------------------------------//=
// MARK: make extension with flowlayout //=
//--------------------------------------//=
//extension PhotoCollectionViewController: UICollectionViewDelegateFlowLayout {
//    // MARK: set (auto) size for cell
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        // MARK: set count cells in stroke
//        let itemsPath: CGFloat = 3
//        // MARK: other setting cells
//        let paddingWith = 20 * (itemsPath + 1)
//        let awailableWidth = collectionView.frame.width - paddingWith
//        let withItems = awailableWidth / itemsPath
//        return CGSize(width: withItems, height: withItems)
//
//        //return CGSize(width: 100, height: 50)
//    }
//    // MARK: set size for cell (from top button, sides4x)
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//    }
//
//
//    // MARK: set size for button line size (расстояние между селл по высоте)
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        20
//    }
//
//
//    // MARK: distance between cells
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        20
//    }
//}


// MARK: ===================================================================================

















