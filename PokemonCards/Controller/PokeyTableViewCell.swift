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
        supertypeLable.text = (withDataFrom.supertype ?? "")
        artistLable.text = String("Artist ") + (withDataFrom.artist ?? "")
        pokeyImageView.sd_setImage(with: URL(string: withDataFrom.imageURL))
        
#warning("paint Trainer cell to different color")
        
        if let superType = withDataFrom.supertype {
            supertypeLable.text = "Group: " + superType
            if withDataFrom.supertype == "Trainer" {
                contentView.backgroundColor = UIColor.green
            }
        }
    }
    
    
}
