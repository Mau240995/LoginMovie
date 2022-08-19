//
//  DetalleMovieViewController.swift
//  LoginMovie
//
//  Created by user216116 on 18/08/22.
//

import UIKit

class DetalleMovieViewController : UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPopular: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    
    var dataList = [Result]()
    
    
    var names: String?
    var popular: Double?
    var descripcion: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = names
        lblPopular.text = "\(popular!)"
        lblDescription.text = descripcion

        
        
        
    }
    

   
}

   



  
