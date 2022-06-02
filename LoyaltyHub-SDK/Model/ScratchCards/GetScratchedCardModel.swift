//
//  GetScratchedCardModel.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 01/06/22.
//


import Foundation

// MARK: - ScratchedCardModel
struct ScratchedCardModel: Codable {
    let status: ScratchedStatus
    var data: ScratchedDataClass
}

// MARK: - DataClass
struct ScratchedDataClass: Codable {
    var scratchCards: [ScratchedCard]
    let rewardCount: [RewardCount]
    let totalEntries, totalPages: Int
}

// MARK: - RewardCount
struct RewardCount: Codable {
    let count: Count
    let benefitType: Int
}


enum Count: Codable {
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(Count.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Count"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - ScratchCard
struct ScratchedCard: Codable {
    
    let id: Int
        let transactionID, name, scratchCardDescription: String?
        let backgroundImage: Int?
        let termsAndConditions: String?
        let createdAt: String?
        let mallName: String?
        let mallID: Int?
        let benefit: Benefit?

    enum CodingKeys: String, CodingKey {
            case id
            case transactionID = "transactionId"
            case name
            case scratchCardDescription = "description"
            case backgroundImage, termsAndConditions, createdAt, mallName
            case mallID = "mallId"
            case benefit
        }
}

// MARK: - Benefit
struct Benefit: Codable {
    let value: Int?
    let id: Int?
    let name: String?
    let logo, message: String?
    let retailerID,benefitType: Int?

    enum CodingKeys: String, CodingKey {
        case value, name, logo, benefitType, message, id
        case retailerID = "retailerId"
    }
}

// MARK: - Status
struct ScratchedStatus: Codable {
    let code: Int
    let message: String
}

