//
//  MoviesViewController.swift
//  LoginMovie
//
//  Created by user216116 on 16/08/22.
//

import UIKit

class MoviesViewController: UIViewController {

    @IBOutlet weak var collectionViewMovies: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
      //  collectionViewMovies.dataSource = self
    }
    
    @IBAction func btnOptions(_ sender: UIButton) {
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
/* MoviesViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //
    }
    
}*/
