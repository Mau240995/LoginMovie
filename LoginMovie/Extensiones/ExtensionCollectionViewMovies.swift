//
//  EctensionCollectionViewMovies.swift
//  LoginMovie
//
//  Created by user216116 on 18/08/22.
//

import UIKit
extension MoviesViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
              return self.dataList.count
          }
          
          func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
              
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MoviesCollectionViewCell
              
              cell.onBind(data: dataList[indexPath.row])
              return cell
              
          }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          let vc = storyboard?.instantiateViewController(withIdentifier: "Detalle") as! DetalleMovieViewController
          
          vc.names = dataList[indexPath.row].title
          vc.popular = dataList[indexPath.row].popularity
          vc.descrp = dataList[indexPath.row].overview
          vc.dates = dataList[indexPath.row].releaseDate
          vc.voteAverage = dataList[indexPath.row].voteAverage
          vc.voteCounts = dataList[indexPath.row].voteCount
          vc.imagenP = "\(dataList[indexPath.row].posterPath)"
          vc.backPath = "\(dataList[indexPath.row].backdropPath)"

          self.navigationController?.pushViewController(vc, animated: true)
      }

          
      }
