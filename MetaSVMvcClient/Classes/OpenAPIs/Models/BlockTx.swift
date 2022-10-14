//
// BlockTx.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Tx simple info for block tx list. */
public struct BlockTx: Codable {

    /** Transaction hash. */
    public var txid: String?
    /** Block height of this tx. */
    public var height: Int?
    /** Hash of the block */
    public var blockHash: String?
    /** transaction size */
    public var size: Int64?
    /** Input count in this transaction */
    public var inputCount: Int?
    /** Output count in this transaction. */
    public var outputCount: Int?
    /** Lock time of this transaction */
    public var lockTime: Int64?
    /** Trasaction fee. */
    public var fee: Int64?
    /** Confirmations of this transaction, -1 if unconfirmed. */
    public var confirmations: Int?
    /** Block timestamp for the transaction, confirmed tx only. */
    public var timestamp: Int64?

    public init(txid: String? = nil, height: Int? = nil, blockHash: String? = nil, size: Int64? = nil, inputCount: Int? = nil, outputCount: Int? = nil, lockTime: Int64? = nil, fee: Int64? = nil, confirmations: Int? = nil, timestamp: Int64? = nil) {
        self.txid = txid
        self.height = height
        self.blockHash = blockHash
        self.size = size
        self.inputCount = inputCount
        self.outputCount = outputCount
        self.lockTime = lockTime
        self.fee = fee
        self.confirmations = confirmations
        self.timestamp = timestamp
    }

}
