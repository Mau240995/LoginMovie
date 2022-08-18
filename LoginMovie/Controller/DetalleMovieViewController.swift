//
//  DetalleMovieViewController.swift
//  LoginMovie
//
//  Created by user216116 on 18/08/22.
//

import UIKit

class DetalleMovieViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPopular: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var voteAvera: UILabel!
    @IBOutlet weak var voteCount: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    
    
    var dataList = [Result]()
    
    var imagenP: String?
    var names: String?
    var popular: Double?
    var descrp: String?
    var dates: String?
    var voteAverage: Double?
    var voteCounts: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = names
      //  lblPopular.text = "\(popular!)"
        lblDate.text = dates
        lblDescription.text = descrp
        //voteAvera.text = "â­ï¸\(voteAverage!)"
       // voteCount.text = "\(voteCounts!)"
//        imagePath.image =

        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

  
