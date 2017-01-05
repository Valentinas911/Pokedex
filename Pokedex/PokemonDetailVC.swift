//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Valentinas Mirosnicenko on 1/3/17.
//  Copyright © 2017 Valentinas Mirosnicenko. All rights reserved.
//

import UIKit
import Alamofire

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var segmentedViewController: UISegmentedControl!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenceLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexIdLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var nextEvoLabel: UILabel!
    @IBOutlet weak var evoImage1: UIImageView!
    @IBOutlet weak var evoImage2: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemon.downloadPokemonDetails {
            self.updateUI()
        }

    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func updateUI() {
    }
    
}
