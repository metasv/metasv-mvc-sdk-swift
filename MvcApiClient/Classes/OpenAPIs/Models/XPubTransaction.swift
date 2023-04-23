//
// XPubTransaction.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Xpub transaction history */
public struct XPubTransaction: Codable {

    /** query xpub */
    public var xpub: String?
    /** Txid for this transaction. */
    public var txid: String?
    /** Max lookahead receive index when processing this transaction. */
    public var maxReceiveIndex: Int?
    /** Max lookahead change index when processing this transaction. */
    public var maxChangeIndex: Int?
    /** Total received satoshis(Including all address) */
    public var income: Int64?
    /** Total spent satoshis(Including all address) */
    public var outcome: Int64?
    /** Height for this transaction. -1 for unconfirmed */
    public var height: Int64?
    /** Block index for this transaction, -1 for unconfirmed */
    public var blockIndex: Int?
    /** Block timestamp for this transaction, if unconfirmed, the time is first seen time. */
    public var blockTime: Int64?
    /** Paging flag, format blockTimestamp_blockIndex */
    public var flag: String?

    public init(xpub: String? = nil, txid: String? = nil, maxReceiveIndex: Int? = nil, maxChangeIndex: Int? = nil, income: Int64? = nil, outcome: Int64? = nil, height: Int64? = nil, blockIndex: Int? = nil, blockTime: Int64? = nil, flag: String? = nil) {
        self.xpub = xpub
        self.txid = txid
        self.maxReceiveIndex = maxReceiveIndex
        self.maxChangeIndex = maxChangeIndex
        self.income = income
        self.outcome = outcome
        self.height = height
        self.blockIndex = blockIndex
        self.blockTime = blockTime
        self.flag = flag
    }

}
