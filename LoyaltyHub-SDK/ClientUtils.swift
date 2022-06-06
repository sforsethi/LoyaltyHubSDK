//
//  ClientUtils.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 03/06/22.
//

import Foundation

public class ClientUtils    {
    var authToken = ""
    var mallId = ""
    
    
    public init(authToken: String, mallId: String)  {
        self.authToken = authToken
        self.mallId = mallId
    }
    
    public init()   {
        self.authToken = ""
        self.mallId = ""
    }
    
    public func getAuthToken() -> String    {
        return authToken
    }
    
    public func getMallId() -> String    {
        return mallId
    }
    
    public func setAuthToken(val: String)  {
        self.authToken = val
    }
    
    public func setMallId(val: String)  {
        self.mallId = val
    }
}

public var ClientData = ClientUtils()
