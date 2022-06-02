//
//  BuyScratchCardModel.swift
//  LoyaltyHub-SDK
//
//  Created by Raghav Sethi on 01/06/22.
//

import Foundation

// MARK: - BuyScratchCardModel
struct BuyScratchCardModel: Codable {
    let status: BuyScratchCardStatus
    let data: BuyScratchCardDataClass?
}

// MARK: - DataClass
struct BuyScratchCardDataClass: Codable {
    let isActive: Int?
    let isDeleted, id: Int?
    let transactionID: String?
    let scratchCardID, customerID: Int?
    let mallID: String?
    let benefitType, typeID, amount: Int?
    let messageText: String?
    let createdByID: Int?
    let updatedAt, createdAt: String?
    let benefit: BuyScratchCardBenefit?

    enum CodingKeys: String, CodingKey {
        case isActive, isDeleted, id
        case transactionID = "transactionId"
        case scratchCardID = "scratchCardId"
        case customerID = "customerId"
        case mallID = "mallId"
        case benefitType
        case typeID = "typeId"
        case amount, messageText
        case createdByID = "createdById"
        case updatedAt, createdAt, benefit
    }
}

// MARK: - Benefit
struct BuyScratchCardBenefit: Codable {
    let name: String
    let logo: String
   // let retailerID: Int

    enum CodingKeys: String, CodingKey {
        case name, logo
        //case retailerID = "retailerId"
    }
}

// MARK: - Status
struct BuyScratchCardStatus: Codable {
    let code: Int
    let message: String
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}
 
