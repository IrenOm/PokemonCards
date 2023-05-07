//
//  PokeyTableViewCell.swift
//  PokemonCards
//
//  Created by irena.omelana on 07/05/2023.
//

import UIKit

class PokeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var supertypeLable: UILabel!
    @IBOutlet weak var artistLable: UILabel!
    @IBOutlet weak var hpLable: UILabel!
    
    func setupUI(withDataFrom: Card){
        
        nameLable.text = "Name: " + withDataFrom.name
        hpLable.text = "Halth points: " + (withDataFrom.hp ?? "0")
        
        pokeyImageView.sd_setImage(with: URL(string: withDataFrom.imageURL))
        
    
    }
    
    
}
