//
//  HeroService.swift
//  HeroesAlamoFire
//
//  Created by Ratislav Ovchinnikov on 05.12.2025.
//

import UIKit
import Alamofire


protocol HeroServiceDelegate {
    func onHeroDidUpdate(model: HeroModel)
}


struct HeroService {
    
    private let totalHeroes = 564
    
    var delegate: HeroServiceDelegate?
    
    func fetchHero() {
        let randomId = Int.random(in: 1...totalHeroes)
        let urlString = "https://akabab.github.io/superhero-api/api/id/\(randomId).json"
        
        AF.request(urlString).responseDecodable(of: HeroModel.self) { response in
            switch response.result {
            case .success(let hero):
                delegate?.onHeroDidUpdate(model: hero)
            case .failure(let error):
                debugPrint(error)
            }
        }
    }
}

