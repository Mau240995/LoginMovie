//
//  FavoritesCollectionViewCell.swift
//  LoginMovie
//
//  Created by user216116 on 17/08/22.
//

import UIKit

class FavoritesCollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var calificacion: UILabel!
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func onBind(data: Result)  {
        nombre.text = data.title
        fecha.text = data.releaseDate
        calificacion.text = "⭐️ \(data.voteCount)"
        descripcion.text = data.overview
        
        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "https://image.tmdb.org/t/p/w342/\(data.posterPath)")!)){
                    (data, req, error) in
                    
                    do{
                        let dataIm = try data
                        DispatchQueue.main.async {
                            self.imagen.image = UIImage(data: dataIm!)
                        }
                    }catch{}
                }.resume()
        
    }
}
