//
//  GetScratchCardModel.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 01/06/22.
//


import Foundation

// MARK: - ScratchCardModel
struct ScratchCardModel: Codable {
    let status: Status
    var data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    var scratchCards: [ScratchCard]
    let totalPoints, gems: String
    let totalEntries, totalPages: Int
}

// MARK: - ScratchCard
struct ScratchCard: Codable {
    let id: Int
    let name, scratchCardDescription: String
    let backgroundImage: Int
    let termsAndConditions: String
    let totalAttempts, targeting, totalCards, totalUsed: Int
    let unlockType, attempts,unlockValue: Int
    let cohertID, canAttempt: Int?
    let benefitsData: [BenefitsDatum]?

    enum CodingKeys: String, CodingKey {
        case id, name
        case scratchCardDescription = "description"
        case backgroundImage, termsAndConditions, totalAttempts, targeting, totalCards, totalUsed, unlockType, attempts, canAttempt, unlockValue
        case cohertID = "cohertId"
        case benefitsData
    }
}

// MARK: - BenefitsDatum
struct BenefitsDatum: Codable {
    let benefitType: Int?
    let rewardName, displayName, name: String?
    let logo: String?
    let retailerID: Int?
    let couponName: String?

    enum CodingKeys: String, CodingKey {
        case benefitType, rewardName, displayName, name, logo
        case retailerID = "retailerId"
        case couponName
    }
}

// MARK: - Status
struct Status: Codable {
    let code: Int
    let message: String
}
