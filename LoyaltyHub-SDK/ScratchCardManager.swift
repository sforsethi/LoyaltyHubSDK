//
//  ScratchCardManager.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 01/06/22.
//

import Foundation
import UIKit

public class ScratchCardManager {
    
    public func openScratchCardPage()   {
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            let scratchCardVC = UIStoryboard(name: "ScratchCard", bundle: nil).instantiateViewController(withIdentifier: "NewScratchCardViewController") as! NewScratchCardViewController
            scratchCardVC.modalPresentationStyle = .fullScreen
            
        }
    }
    
}
