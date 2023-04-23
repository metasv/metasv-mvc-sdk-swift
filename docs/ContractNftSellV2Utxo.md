# ContractNftSellV2Utxo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | Address string of this utxo | [optional] 
**contractAddress** | **String** | Address calculated from contract hash(p2ch). | [optional] 
**txid** | **String** | Txid for this utxo. | [optional] 
**txIndex** | **Int** | Output index for the Utxo. | [optional] 
**codeHash** | **String** | Codehash of this utxo. | [optional] 
**genesis** | **String** | Genesis of this utxo. | [optional] 
**tokenIndex** | **Int64** | The index of this NFT. | [optional] 
**price** | **Int64** | the price of nft. | [optional] 
**feeAddressPkh** | **String** | The address to receive fees. | [optional] 
**feeRate** | **Int** | feeRate | [optional] 
**nftId** | **String** | nftId | [optional] 
**sellerAddressPkh** | **String** | The address pkh of seller | [optional] 
**satoshi** | **Int64** | Mvc value of the utxo(Irrelavant to token value) | [optional] 
**satoshiString** | **String** | Mvc value of the utxo(In string format) | [optional] 
**height** | **Int64** | The height of this utxo, -1 for unconfirmed utxo. | [optional] 
**isReady** | **Bool** | Is current nft transfered into sell contract, If not ready, the following fields will be null | [optional] 
**sensibleId** | **String** | SensibleId of the token | [optional] 
**metaTxid** | **String** | The metanet tx describing the nft. | [optional] 
**metaOutputIndex** | **Int** | Symbol of the token. | [optional] 
**tokenSupply** | **Int64** | The total supply of this NFT. | [optional] 
**flag** | **String** | Flag used for paging | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


