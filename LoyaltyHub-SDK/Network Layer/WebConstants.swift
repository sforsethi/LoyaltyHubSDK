//
//  WebConstants.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 01/06/22.
//

import Foundation

internal class WebConstants  {
    
    static let hostUrl = "https://asgard-apis-stage.frt.one"
    static let version = "v1"
    
    static let baseUrl = hostUrl+"/"+version
    
    //ScratchCard APIs
    static let getScratchCardsAPI = baseUrl+"/customers/scratchCard"
    static let getScratchCardHomeAPI = baseUrl+"/customers/scratchCard/scratchCardHome"
    static let getScratchedCardsAPI = baseUrl+"/customers/scratchCard/scratched"
}
