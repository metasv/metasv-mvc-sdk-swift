# XpubUtxo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**xpub** | **String** | xpub of the utxo | [optional] 
**address** | **String** | Address string of this utxo | [optional] 
**addressType** | **Int** | Address type, 0 for receive address, 1 for change address. path is {{addressType}}/{{addressIndex}} | [optional] 
**addressIndex** | **Int** | Address index. Address path in the xpub is {{addressType}}/{{addressIndex}} | [optional] 
**txid** | **String** | Txid for this utxo. | [optional] 
**txIndex** | **Int** | Output index for the Utxo. | [optional] 
**value** | **Int64** | Satoshi value of the utxo. | [optional] 
**height** | **Int64** | The height of this utxo, -1 for unconfirmed utxo. | [optional] 
**flag** | **Int64** | The paging flag of utxo | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


