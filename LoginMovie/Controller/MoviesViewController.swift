//
//  MoviesViewController.swift
//  LoginMovie
//
//  Created by user216116 on 16/08/22.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var collectionViewMovies: UICollectionView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    var context = CIContext(options: nil)
    var dataList = [Result]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.collectionViewMovies.dataSource = self
        
        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/upcoming?api_key=c7f7d1dc5a6aa58fd2f3602748ad9c64&language=en-US&page=1")!)){
            (data,req,error) in
            do{
               
                let respuesta = try JSONDecoder().decode(Movies.self, from: data!)
                DispatchQueue.main.async {
                    //print("hhh \(respuesta.results)")
                    self.dataList = respuesta.results!
                  
                    self.collectionViewMovies.reloadData()
                    
                }
                
         }catch{
                
            }
        }.resume()
        
    }


@IBAction func clikSegment(_ sender: UISegmentedControl) {
 if sender.selectedSegmentIndex == 0{
     
 }else if sender.selectedSegmentIndex == 1{
     
 }else if sender.selectedSegmentIndex == 2{
     
 }
 if sender.selectedSegmentIndex == 4{
     
 }
     
 
}
@IBAction func btnOption(_ sender: Any) {
            let alert = UIAlertController(title: "", message: "What do you want to do?", preferredStyle: .alert)
        let btnAction = UIAlertAction(title: "Perfil", style: .default, handler:    { action in
            self.performSegue(withIdentifier: "Perfil", sender: nil)        })
        let btnAction1 = UIAlertAction(title: "Log out", style: .default, handler: {action in
            self.navigationController?.popViewController(animated: true)        })
        let btnAction2 = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(btnAction)
        alert.addAction(btnAction1)
        alert.addAction(btnAction2)
        self.present(alert, animated: true, completion: nil)
    }
}
