//
//  ExtensionFavoritesMoviesController.swift
//  LoginMovie
//
//  Created by user216116 on 18/08/22.
//

import Foundation
import UIKit
extension FavoritesMoviesController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 2
        }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        //return self.dataList = respuesta.results
        print("datos Faboritos \(self.dataListF) ")
        return self.dataListF.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellF", for: indexPath) as! FavoritesCollectionViewCell
        
        cell.onBind(data: dataListF[indexPath.row])
        return cell
        
    }
    
}

