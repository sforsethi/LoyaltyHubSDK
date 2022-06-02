//
//  NewScratchCardViewController.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 01/06/22.
//

import UIKit

public class NewScratchCardViewController: UIViewController {

    var statusCode = 0
    var statusMsg = ""
    
    //MARK: - IBOutlets
    @IBOutlet weak var pointsBgView: UIView!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var gemsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var dragHereView: UIView!
    @IBOutlet weak var dragHereLabel: UILabel!
    @IBOutlet weak var downArrowView: UIView!
    @IBOutlet weak var benefitLabel1: UILabel!
    @IBOutlet weak var differentStatesView: UIView!
    @IBOutlet weak var allAttemptsUsedStateView: UIView!
    @IBOutlet weak var loyaltyHubView: UIView!
    @IBOutlet weak var allAttemptsLabel: UILabel!
    @IBOutlet weak var allAttemptsSubtitleLabel: UILabel!
    @IBOutlet weak var earnMoreButton: UIButton!
    @IBOutlet weak var earnMoreView: UIView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var earnMoreLabel: UILabel!
    @IBOutlet weak var benefitsView: UIView!
    
    @IBOutlet weak var benefitLabel2: UILabel!
    @IBOutlet weak var retailersView: UIView!
    @IBOutlet weak var storeIcon1: UIImageView!
    @IBOutlet weak var storeIcon2: UIImageView!
    @IBOutlet weak var storeIcon3: UIImageView!
    @IBOutlet weak var moreStoresLabel: UILabel!
    @IBOutlet weak var pointBenefitIcon: UIImageView!
    @IBOutlet weak var benefitPointsLabel: UILabel!
    @IBOutlet weak var gemBenefitIcon: UIImageView!
    @IBOutlet weak var benefitGemLabel: UILabel!
    @IBOutlet weak var unlockForLabel: UILabel!
    @IBOutlet weak var unlockForIcon2: UIImageView!
    @IBOutlet weak var unlockForValueLabel: UILabel!
    @IBOutlet weak var youNeedLabel: UILabel!
    @IBOutlet weak var unlockForIcon1: UIImageView!
    @IBOutlet weak var morePointsToUnlockLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var storeIcon3TrailingConstraint: NSLayoutConstraint!
    
    
    @IBAction func earnMoreButton(_ sender: UIButton) {
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func questionButtonTapped(_ sender: Any) {
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Welcome to ScratchCard Page")
        // Do any additional setup after loading the view.
        
        WebAPI.getScratchCardsAPI(completion: { (abc) in
            //
        }, delegate: self)
    }

}
