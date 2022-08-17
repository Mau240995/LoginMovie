//
//  MoviesCollectionViewCell.swift
//  LoginMovie
//
//  Created by user216116 on 16/08/22.
//

import UIKit

class MoviesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblDescrition: UILabel!
    @IBOutlet weak var lblQuatification: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func onBind(data: Result)  {
        lblName.text = data.title
        lblDate.text = data.releaseDate
        lblQuatification.text = String(data.voteCount)
        lblDescrition.text = data.overview
    }
}
