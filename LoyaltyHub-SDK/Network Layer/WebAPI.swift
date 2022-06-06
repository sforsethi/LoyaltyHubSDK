//
//  WebAPI.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 01/06/22.
//

import Foundation
import Alamofire
import SwiftyJSON

internal class WebAPI    {
    //MARK: - New Get ScratchCards API
    class func getScratchCardsAPI(completion: @escaping (ScratchCardModel?)->Void, delegate: NewScratchCardViewController) {
        let params : [String:Any] = [
            
            "pageNo": 1,
            "pageSize": 10
        ]
        
        let headers: HTTPHeaders = [
            
            "Authorization": "Bearer " + ClientData.authToken,
            "mallId": "mall_\(ClientData.mallId)"
        ]
        
        print(headers)
        print(params)
        
        var scratchCardData: ScratchCardModel?
        print("URL: \(WebConstants.getScratchCardsAPI)")
        AF.request(WebConstants.getScratchCardsAPI, method: .get, parameters: params,headers: headers).responseJSON { response in
            switch response.result {
            case .success(let value):
                print("Success!")
                let json = JSON(value)
                
                print(":: \(json) ::")

                let statusObj = json["status"]
                let code = statusObj["code"].intValue
                let message = statusObj["message"].stringValue
                
                print("Status Code : \(code)")
                
                if code == 200
                {
                    let data = response.data
                    //print(data)
                    
                    do{
                        let decoder = JSONDecoder()
                        //using the array to put values
                        scratchCardData = try decoder.decode(ScratchCardModel.self, from: data!)

                    }catch let err{
                        print(err)
                    }
                }
                
                delegate.statusCode = code
                delegate.statusMsg = message
                
                completion(scratchCardData)

            case .failure(let error):
                print(error)

                completion(nil)

            }
        }
    }
    
    
    class func buyScratchCardsAPI(completion:@escaping (BuyScratchCardModel?)->Void ,delegate: NewScratchCardViewController)   {
        let params : [String:Any] = [:
        
      //  "scratchCardId": delegate.selectedScratchCard ?? 0
            ]
    
    let headers: HTTPHeaders = [
        
//        "Authorization": "Bearer " + CommonFunctions.getUserData().authToken,
//        "mallId": "mall_\(CommonFunctions.getPreferredMallId())"
    ]
        
        print("The params are: \(params)")
        print("The headers are: \(headers)")
        var buySCModel: BuyScratchCardModel?
    AF.request(WebConstants.getScratchCardsAPI, method: .post, parameters: params,headers: headers).responseJSON { response in
        switch response.result {
        case .success(let value):

            let json = JSON(value)
            
            print(":: \(json) ::")

            let statusObj = json["status"]
            let code = statusObj["code"].intValue
            let message = statusObj["message"].stringValue
            
            let data = response.data
            //print(data)
            
            do{
                let decoder = JSONDecoder()
                buySCModel = try decoder.decode(BuyScratchCardModel.self, from: data!)
                print(buySCModel)

            }catch let err{
                print(err)
            }
            
            delegate.statusCode = code
            delegate.statusMsg = message
            
            completion(buySCModel)

        case .failure(let error):
            print(error)

            completion(nil)

        }
    }
    
}

}
