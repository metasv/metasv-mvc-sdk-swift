# ContractAPI

All URIs are relative to *https://testnet.mvcapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contractFtAddressAddressBalanceConfirmedGet**](ContractAPI.md#contractftaddressaddressbalanceconfirmedget) | **GET** /contract/ft/address/{address}/balance/confirmed | Get all contract token balances for specific address ignoring all unconfirmed txs.
[**contractFtAddressAddressBalanceGet**](ContractAPI.md#contractftaddressaddressbalanceget) | **GET** /contract/ft/address/{address}/balance | Get all contract token balances for specific address.
[**contractFtAddressAddressCodeHashGenesisTxGet**](ContractAPI.md#contractftaddressaddresscodehashgenesistxget) | **GET** /contract/ft/address/{address}/{codeHash}/{genesis}/tx | Get all contract token balances for specific address.
[**contractFtAddressAddressUtxoGet**](ContractAPI.md#contractftaddressaddressutxoget) | **GET** /contract/ft/address/{address}/utxo | Get all contract token utxos for specific address.
[**contractNftAddressAddressCountConfirmedGet**](ContractAPI.md#contractnftaddressaddresscountconfirmedget) | **GET** /contract/nft/address/{address}/count/confirmed | Get confirmed utxo count for specific nft(ignore all unconfirmed txs).
[**contractNftAddressAddressSummaryGet**](ContractAPI.md#contractnftaddressaddresssummaryget) | **GET** /contract/nft/address/{address}/summary | Get nft summary(NFT count group by genesis) for address.
[**contractNftAddressAddressUtxoGet**](ContractAPI.md#contractnftaddressaddressutxoget) | **GET** /contract/nft/address/{address}/utxo | Get all contract nft token utxos for specific address.
[**contractNftGenesisCodeHashGenesisSummaryGet**](ContractAPI.md#contractnftgenesiscodehashgenesissummaryget) | **GET** /contract/nft/genesis/{codeHash}/{genesis}/summary | Get nft summary(count group by address) for specific codeHash and genesisId(result cached for 60s).
[**contractNftGenesisCodeHashGenesisUtxoGet**](ContractAPI.md#contractnftgenesiscodehashgenesisutxoget) | **GET** /contract/nft/genesis/{codeHash}/{genesis}/utxo | Get all contract nft token utxos by codeHash and genesisId.
[**contractNftSellAddressAddressUtxoGet**](ContractAPI.md#contractnftselladdressaddressutxoget) | **GET** /contract/nft/sell/address/{address}/utxo | Get all contract sell sell utxos for specific address.
[**contractNftSellGenesisCodeHashGenesisUtxoGet**](ContractAPI.md#contractnftsellgenesiscodehashgenesisutxoget) | **GET** /contract/nft/sell/genesis/{codeHash}/{genesis}/utxo | Get all contract nft token utxos by codeHash and genesisId.
[**contractUniqueGenesisCodeHashGenesisUtxoGet**](ContractAPI.md#contractuniquegenesiscodehashgenesisutxoget) | **GET** /contract/unique/genesis/{codeHash}/{genesis}/utxo | Get contract unique utxos by codeHash and genesisId.


# **contractFtAddressAddressBalanceConfirmedGet**
```swift
    open class func contractFtAddressAddressBalanceConfirmedGet(address: String, codeHash: String, genesis: String, completion: @escaping (_ data: Int64?, _ error: Error?) -> Void)
```

Get all contract token balances for specific address ignoring all unconfirmed txs.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let codeHash = "codeHash_example" // String | Filter by contract code hash
let genesis = "genesis_example" // String | Filter by contract genesis

// Get all contract token balances for specific address ignoring all unconfirmed txs.
ContractAPI.contractFtAddressAddressBalanceConfirmedGet(address: address, codeHash: codeHash, genesis: genesis) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | the requested address | 
 **codeHash** | **String** | Filter by contract code hash | 
 **genesis** | **String** | Filter by contract genesis | 

### Return type

**Int64**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractFtAddressAddressBalanceGet**
```swift
    open class func contractFtAddressAddressBalanceGet(address: String, codeHash: String? = nil, genesis: String? = nil, completion: @escaping (_ data: [ContractFtBalance]?, _ error: Error?) -> Void)
```

Get all contract token balances for specific address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let codeHash = "codeHash_example" // String | Filter by contract code hash (optional)
let genesis = "genesis_example" // String | Filter by contract genesis (optional)

// Get all contract token balances for specific address.
ContractAPI.contractFtAddressAddressBalanceGet(address: address, codeHash: codeHash, genesis: genesis) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | the requested address | 
 **codeHash** | **String** | Filter by contract code hash | [optional] 
 **genesis** | **String** | Filter by contract genesis | [optional] 

### Return type

[**[ContractFtBalance]**](ContractFtBalance.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractFtAddressAddressCodeHashGenesisTxGet**
```swift
    open class func contractFtAddressAddressCodeHashGenesisTxGet(address: String, codeHash: String, genesis: String, flag: String? = nil, completion: @escaping (_ data: [ContractFtAddressTx]?, _ error: Error?) -> Void)
```

Get all contract token balances for specific address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let codeHash = "codeHash_example" // String | Filter by contract code hash
let genesis = "genesis_example" // String | Filter by contract genesis
let flag = "flag_example" // String | The last id of the last query(Paging flag) (optional)

// Get all contract token balances for specific address.
ContractAPI.contractFtAddressAddressCodeHashGenesisTxGet(address: address, codeHash: codeHash, genesis: genesis, flag: flag) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | the requested address | 
 **codeHash** | **String** | Filter by contract code hash | 
 **genesis** | **String** | Filter by contract genesis | 
 **flag** | **String** | The last id of the last query(Paging flag) | [optional] 

### Return type

[**[ContractFtAddressTx]**](ContractFtAddressTx.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractFtAddressAddressUtxoGet**
```swift
    open class func contractFtAddressAddressUtxoGet(address: String, codeHash: String? = nil, genesis: String? = nil, flag: String? = nil, completion: @escaping (_ data: [ContractFtUtxo]?, _ error: Error?) -> Void)
```

Get all contract token utxos for specific address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let codeHash = "codeHash_example" // String | Filter by contract code hash (optional)
let genesis = "genesis_example" // String | Filter by contract genesis (optional)
let flag = "flag_example" // String | The flag of the last query Item(Paging flag) (optional)

// Get all contract token utxos for specific address.
ContractAPI.contractFtAddressAddressUtxoGet(address: address, codeHash: codeHash, genesis: genesis, flag: flag) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | the requested address | 
 **codeHash** | **String** | Filter by contract code hash | [optional] 
 **genesis** | **String** | Filter by contract genesis | [optional] 
 **flag** | **String** | The flag of the last query Item(Paging flag) | [optional] 

### Return type

[**[ContractFtUtxo]**](ContractFtUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractNftAddressAddressCountConfirmedGet**
```swift
    open class func contractNftAddressAddressCountConfirmedGet(address: String, codeHash: String, genesis: String, completion: @escaping (_ data: Int?, _ error: Error?) -> Void)
```

Get confirmed utxo count for specific nft(ignore all unconfirmed txs).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let codeHash = "codeHash_example" // String | Filter by contract code hash
let genesis = "genesis_example" // String | Filter by contract genesis

// Get confirmed utxo count for specific nft(ignore all unconfirmed txs).
ContractAPI.contractNftAddressAddressCountConfirmedGet(address: address, codeHash: codeHash, genesis: genesis) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | the requested address | 
 **codeHash** | **String** | Filter by contract code hash | 
 **genesis** | **String** | Filter by contract genesis | 

### Return type

**Int**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractNftAddressAddressSummaryGet**
```swift
    open class func contractNftAddressAddressSummaryGet(address: String, completion: @escaping (_ data: [ContractNftAddressSummary]?, _ error: Error?) -> Void)
```

Get nft summary(NFT count group by genesis) for address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address

// Get nft summary(NFT count group by genesis) for address.
ContractAPI.contractNftAddressAddressSummaryGet(address: address) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | the requested address | 

### Return type

[**[ContractNftAddressSummary]**](ContractNftAddressSummary.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractNftAddressAddressUtxoGet**
```swift
    open class func contractNftAddressAddressUtxoGet(address: String, codeHash: String? = nil, genesis: String? = nil, limit: Int? = nil, flag: String? = nil, completion: @escaping (_ data: [ContractNftUtxo]?, _ error: Error?) -> Void)
```

Get all contract nft token utxos for specific address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let codeHash = "codeHash_example" // String | Filter by contract code hash (optional)
let genesis = "genesis_example" // String | Filter by contract genesis (optional)
let limit = 987 // Int | Limit the return count(no more than 300) (optional)
let flag = "flag_example" // String | The flag of the last query Item(Paging flag) (optional)

// Get all contract nft token utxos for specific address.
ContractAPI.contractNftAddressAddressUtxoGet(address: address, codeHash: codeHash, genesis: genesis, limit: limit, flag: flag) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | the requested address | 
 **codeHash** | **String** | Filter by contract code hash | [optional] 
 **genesis** | **String** | Filter by contract genesis | [optional] 
 **limit** | **Int** | Limit the return count(no more than 300) | [optional] 
 **flag** | **String** | The flag of the last query Item(Paging flag) | [optional] 

### Return type

[**[ContractNftUtxo]**](ContractNftUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractNftGenesisCodeHashGenesisSummaryGet**
```swift
    open class func contractNftGenesisCodeHashGenesisSummaryGet(codeHash: String, genesis: String, completion: @escaping (_ data: [ContractNftGenesisSummary]?, _ error: Error?) -> Void)
```

Get nft summary(count group by address) for specific codeHash and genesisId(result cached for 60s).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let codeHash = "codeHash_example" // String | Code hash of the token.
let genesis = "genesis_example" // String | Contract genesis

// Get nft summary(count group by address) for specific codeHash and genesisId(result cached for 60s).
ContractAPI.contractNftGenesisCodeHashGenesisSummaryGet(codeHash: codeHash, genesis: genesis) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeHash** | **String** | Code hash of the token. | 
 **genesis** | **String** | Contract genesis | 

### Return type

[**[ContractNftGenesisSummary]**](ContractNftGenesisSummary.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractNftGenesisCodeHashGenesisUtxoGet**
```swift
    open class func contractNftGenesisCodeHashGenesisUtxoGet(codeHash: String, genesis: String, tokenIndex: Int64? = nil, max: Int64? = nil, min: Int64? = nil, completion: @escaping (_ data: [ContractNftUtxo]?, _ error: Error?) -> Void)
```

Get all contract nft token utxos by codeHash and genesisId.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let codeHash = "codeHash_example" // String | Code hash of the token.
let genesis = "genesis_example" // String | Contract genesis
let tokenIndex = 987 // Int64 | Find exact token Index. (optional)
let max = 987 // Int64 | Token index not bigger than this(include this). (optional)
let min = 987 // Int64 | Token index not less than this(include this). (optional)

// Get all contract nft token utxos by codeHash and genesisId.
ContractAPI.contractNftGenesisCodeHashGenesisUtxoGet(codeHash: codeHash, genesis: genesis, tokenIndex: tokenIndex, max: max, min: min) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeHash** | **String** | Code hash of the token. | 
 **genesis** | **String** | Contract genesis | 
 **tokenIndex** | **Int64** | Find exact token Index. | [optional] 
 **max** | **Int64** | Token index not bigger than this(include this). | [optional] 
 **min** | **Int64** | Token index not less than this(include this). | [optional] 

### Return type

[**[ContractNftUtxo]**](ContractNftUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractNftSellAddressAddressUtxoGet**
```swift
    open class func contractNftSellAddressAddressUtxoGet(address: String, codeHash: String? = nil, genesis: String? = nil, flag: String? = nil, completion: @escaping (_ data: [ContractNftSellUtxo]?, _ error: Error?) -> Void)
```

Get all contract sell sell utxos for specific address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | Owner address.
let codeHash = "codeHash_example" // String | Filter by contract code hash (optional)
let genesis = "genesis_example" // String | Filter by contract genesis (optional)
let flag = "flag_example" // String | The flag of the last query Item(Paging flag) (optional)

// Get all contract sell sell utxos for specific address.
ContractAPI.contractNftSellAddressAddressUtxoGet(address: address, codeHash: codeHash, genesis: genesis, flag: flag) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | Owner address. | 
 **codeHash** | **String** | Filter by contract code hash | [optional] 
 **genesis** | **String** | Filter by contract genesis | [optional] 
 **flag** | **String** | The flag of the last query Item(Paging flag) | [optional] 

### Return type

[**[ContractNftSellUtxo]**](ContractNftSellUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractNftSellGenesisCodeHashGenesisUtxoGet**
```swift
    open class func contractNftSellGenesisCodeHashGenesisUtxoGet(codeHash: String, genesis: String, tokenIndex: Int64? = nil, max: Int64? = nil, min: Int64? = nil, completion: @escaping (_ data: [ContractNftSellUtxo]?, _ error: Error?) -> Void)
```

Get all contract nft token utxos by codeHash and genesisId.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let codeHash = "codeHash_example" // String | Code hash of the token.
let genesis = "genesis_example" // String | Contract genesis
let tokenIndex = 987 // Int64 | Find exact token Index. (optional)
let max = 987 // Int64 | Token index not bigger than this(include this). (optional)
let min = 987 // Int64 | Token index not less than this(include this). (optional)

// Get all contract nft token utxos by codeHash and genesisId.
ContractAPI.contractNftSellGenesisCodeHashGenesisUtxoGet(codeHash: codeHash, genesis: genesis, tokenIndex: tokenIndex, max: max, min: min) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeHash** | **String** | Code hash of the token. | 
 **genesis** | **String** | Contract genesis | 
 **tokenIndex** | **Int64** | Find exact token Index. | [optional] 
 **max** | **Int64** | Token index not bigger than this(include this). | [optional] 
 **min** | **Int64** | Token index not less than this(include this). | [optional] 

### Return type

[**[ContractNftSellUtxo]**](ContractNftSellUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contractUniqueGenesisCodeHashGenesisUtxoGet**
```swift
    open class func contractUniqueGenesisCodeHashGenesisUtxoGet(codeHash: String, genesis: String, completion: @escaping (_ data: [ContractUniqueUtxo]?, _ error: Error?) -> Void)
```

Get contract unique utxos by codeHash and genesisId.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let codeHash = "codeHash_example" // String | Code hash of the token.
let genesis = "genesis_example" // String | Contract genesis

// Get contract unique utxos by codeHash and genesisId.
ContractAPI.contractUniqueGenesisCodeHashGenesisUtxoGet(codeHash: codeHash, genesis: genesis) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **codeHash** | **String** | Code hash of the token. | 
 **genesis** | **String** | Contract genesis | 

### Return type

[**[ContractUniqueUtxo]**](ContractUniqueUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

