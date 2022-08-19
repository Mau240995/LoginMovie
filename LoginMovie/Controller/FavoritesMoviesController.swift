//
//  FavoritesMoviesController.swift
//  LoginMovie
//
//  Created by user216116 on 17/08/22.
//

import UIKit

class FavoritesMoviesController: UIViewController {
    
    @IBOutlet weak var collectionViewMoviesFavorite: UICollectionView!
    
    var dataListF = [Result]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        self.collectionViewMoviesFavorite.dataSource = self
        
        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/upcoming?api_key=c7f7d1dc5a6aa58fd2f3602748ad9c64&language=en-US&page=1")!)){
            (data,req,error) in
            do{
               
                let respuestaF = try JSONDecoder().decode(Movies.self, from: data!)
                DispatchQueue.main.async {
                    
                    self.dataListF = respuestaF.results!
                  
                self.collectionViewMoviesFavorite.reloadData()
                    
                }
                
            }catch{
                
            }
        }
        .resume()
        
    }

   
}
