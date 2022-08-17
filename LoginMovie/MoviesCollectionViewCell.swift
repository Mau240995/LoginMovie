//
//  MoviesCollectionViewCell.swift
//  LoginMovie
//
//  Created by user216116 on 16/08/22.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var lblQualification: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func onBind(data: Result)  {
        lblName.text = data.title
        lblDate.text = data.releaseDate
        lblQualification.text = "⭐️ \(data.voteCount)"
        lblDescription.text = data.overview
        
        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "https://image.tmdb.org/t/p/w342/\(data.posterPath)")!)){
                    (data, req, error) in
                    
                    do{
                        let dataIm = try data
                        DispatchQueue.main.async {
                            self.imageView.image = UIImage(data: dataIm!)
                        }
                    }catch{
                        
                    }
                }.resume()
        
    }
}
