# XPubTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**xpub** | **String** | query xpub | [optional] 
**txid** | **String** | Txid for this transaction. | [optional] 
**maxReceiveIndex** | **Int** | Max lookahead receive index when processing this transaction. | [optional] 
**maxChangeIndex** | **Int** | Max lookahead change index when processing this transaction. | [optional] 
**income** | **Int64** | Total received satoshis(Including all address) | [optional] 
**outcome** | **Int64** | Total spent satoshis(Including all address) | [optional] 
**height** | **Int** | Height for this transaction. -1 for unconfirmed | [optional] 
**blockIndex** | **Int** | Block index for this transaction, -1 for unconfirmed | [optional] 
**blockTime** | **Int64** | Block timestamp for this transaction, if unconfirmed, the time is first seen time. | [optional] 
**flag** | **String** | Paging flag, format blockTimestamp_blockIndex | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


