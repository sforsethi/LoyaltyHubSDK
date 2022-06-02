//
//  ViewController.swift
//  LoyaltyHubDemo
//
//  Created by Raghav Sethi on 01/06/22.
//

import UIKit
import LoyaltyHub_SDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            let bundle = Bundle(identifier: "sforsethi.LoyaltyHub-SDK")
            let scratchCardVC = UIStoryboard(name: "ScratchCard", bundle: bundle).instantiateViewController(withIdentifier: "NewScratchCardViewController") as! NewScratchCardViewController
            scratchCardVC.modalPresentationStyle = .fullScreen
        //    self.present(scratchCardVC, animated: true, completion: nil)
        }
    }


}

