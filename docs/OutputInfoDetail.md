# OutputInfoDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **String** | txid that this output is in. | [optional] 
**index** | **Int** | index of this output in the tx. | [optional] 
**script** | **String** | output scrypt in hex format | [optional] 
**address** | **String** | parsed address of this output, empty for non standard. | [optional] 
**value** | **Int64** | value of this output | [optional] 
**spent** | **Bool** | this output is spent or not, true if spent | [optional] 
**spentTxid** | **String** | txid that spent this output | [optional] 
**spentIndex** | **Int** | vin index of the spent tx | [optional] 
**spentHeight** | **Int** | height of the spent tx(-1 if unconfirmed, 0 if unspent) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


