//
//  CollectionViewController.swift
//  BakuLandmarksApp
//
//  Created by Fuad Karimli on 4/25/22.
//

import UIKit



class CollectionViewController: UICollectionViewController {

    
    var images = ["image1", "image2","image3","image4","image5","image6","image7","image8","image9","image10"]
    
    var names = ["Maiden Tower", "Old City", "Flame Towers", "Palace of The Shirvanshahs", "Little Venice","Bibi-Heybat Mosque", "Baku Olympic Stadium", "Ateshgah of Baku","Highland Park","Heydar Mosque"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
        navigationItem.title = "Baku Landmarks"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "to"{
            
            if let indexPath = self.collectionView?.indexPath(for: sender as! CollectionViewCell){
             
                 let detailView = segue.destination as! Details
                
                detailView.selectedImage = images[indexPath.row] as String
                
                
                detailView.selectedLabel = names[indexPath.row] as String
                
            }
            
           
            
            
        }
    }




    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if let countryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            countryCell.imageView.image = UIImage(named: images[indexPath.row])
            countryCell.label.text = names[indexPath.row]
            cell = countryCell
        }
    
        
    
        return cell
    }



}
