//
//  SpotManager.swift
//  jphacks
//
//  Created by 内村祐之 on 2015/11/28.
//  Copyright © 2015年 at. All rights reserved.
//

class SpotManager {
    static let sharedController = SpotManager()
    
    let nightViewSpotRepository: NightViewSpotRepository
    let sightseeingSpotRepository: SightseeingSpotRepository
    let filmingLocationSpotRepository: FilmingLocationSpotRepository
    let sculptureSpotRepository: SculptureSpotRepository
    let toiletSpotRepository: ToiletSpotRepository
    
    var spots: [Spot]  {
        return nightViewSpotRepository.spots as [Spot] + sightseeingSpotRepository.spots as [Spot] + filmingLocationSpotRepository.spots as [Spot] + sculptureSpotRepository.spots as [Spot] + toiletSpotRepository.spots as [Spot]
    }
    
    static var startSpot: Spot? = nil
    static var targetSpot: Spot? = nil
    
    private init() {
        nightViewSpotRepository = NightViewSpotRepository()
        sightseeingSpotRepository = SightseeingSpotRepository()
        filmingLocationSpotRepository = FilmingLocationSpotRepository()
        sculptureSpotRepository = SculptureSpotRepository()
        toiletSpotRepository = ToiletSpotRepository()        
    }

}