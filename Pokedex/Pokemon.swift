//
//  Pokemon.swift
//  Pokedex
//
//  Created by Valentinas Mirosnicenko on 1/3/17.
//  Copyright © 2017 Valentinas Mirosnicenko. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defence: String!
    private var _weight: String!
    private var _height: String!
    private var _attack: String!
    private var _nextEvo: String!
    private var _pokemonURL: String!
    
    var name: String {
        get {
            return _name
        } set {
            _name = newValue
        }
    }
    
    var pokedexId: Int {
        get {
            return _pokedexId
        } set {
            _pokedexId = newValue
        }
    }
    
    var description: String {
        get {
            return _description
        } set {
            _description = newValue
        }
    }
    
    var type: String {
        get {
            return _type
        } set {
            _type = newValue
        }
    }
    
    var defence: String {
        get {
            return _defence
        } set {
            _defence = newValue
        }
    }
    
    var weight: String {
        get {
            return _weight
        } set {
            _weight = newValue
        }
    }
    
    var height: String {
        get {
            return _height
        } set {
            _height = newValue
        }
    }
    
    var attack: String {
        get {
            return _attack
        } set {
            _attack = newValue
        }
    }
    
    var nextEvo: String {
        get {
            return _nextEvo
        } set {
            _nextEvo = newValue
        }
    }
    
    var pokemonURL: String {
        get {
            return _pokemonURL
        } set {
            _pokemonURL = newValue
        }
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
        self._pokemonURL = "\(BASE_URL)/\(self.pokedexId)/"
    }
    
    func downloadPokemonDetails(completed: @escaping DownloadComplete) {
        //Alamofire.request(URL(string: "\(BASE_URL)1/")!).responseJSON { response in
        Alamofire.request(URL(string: "http://pokeapi.co/api/v2/pokemon/1/")!).responseJSON { response in
            print("\(BASE_URL)1/")
            print(response.result)
            
            completed()
        }
    }
}
