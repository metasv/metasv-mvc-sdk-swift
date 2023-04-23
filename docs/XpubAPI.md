# XpubAPI

All URIs are relative to *https://testnet.mvcapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**xpubLiteXpubAddressAddressGet**](XpubAPI.md#xpublitexpubaddressaddressget) | **GET** /xpubLite/{xpub}/address/{address} | Get xpub address type and index. Only index under /0/70 /1/30 is valid. Otherwise not found.
[**xpubLiteXpubBalanceGet**](XpubAPI.md#xpublitexpubbalanceget) | **GET** /xpubLite/{xpub}/balance | Get xpub balances including confirmed and unconfirmed.
[**xpubLiteXpubUtxoGet**](XpubAPI.md#xpublitexpubutxoget) | **GET** /xpubLite/{xpub}/utxo | Get xpub utxos by specific xpub(300 per page).


# **xpubLiteXpubAddressAddressGet**
```swift
    open class func xpubLiteXpubAddressAddressGet(xpub: String, address: String, completion: @escaping (_ data: XpubAddress?, _ error: Error?) -> Void)
```

Get xpub address type and index. Only index under /0/70 /1/30 is valid. Otherwise not found.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let xpub = "xpub_example" // String | the requested xpub
let address = "address_example" // String | the requested address

// Get xpub address type and index. Only index under /0/70 /1/30 is valid. Otherwise not found.
XpubAPI.xpubLiteXpubAddressAddressGet(xpub: xpub, address: address) { (response, error) in
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
 **xpub** | **String** | the requested xpub | 
 **address** | **String** | the requested address | 

### Return type

[**XpubAddress**](XpubAddress.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **xpubLiteXpubBalanceGet**
```swift
    open class func xpubLiteXpubBalanceGet(xpub: String, completion: @escaping (_ data: XpubLiteBalance?, _ error: Error?) -> Void)
```

Get xpub balances including confirmed and unconfirmed.

This api returns confirmed balance(same as address balance), not sumed utxos.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let xpub = "xpub_example" // String | the xpub to search

// Get xpub balances including confirmed and unconfirmed.
XpubAPI.xpubLiteXpubBalanceGet(xpub: xpub) { (response, error) in
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
 **xpub** | **String** | the xpub to search | 

### Return type

[**XpubLiteBalance**](XpubLiteBalance.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **xpubLiteXpubUtxoGet**
```swift
    open class func xpubLiteXpubUtxoGet(xpub: String, limit: Int? = nil, completion: @escaping (_ data: [XpubUtxo]?, _ error: Error?) -> Void)
```

Get xpub utxos by specific xpub(300 per page).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let xpub = "xpub_example" // String | the requested xpub
let limit = 987 // Int | The max items returned in this query(default 300), not bigger than 5000. (optional)

// Get xpub utxos by specific xpub(300 per page).
XpubAPI.xpubLiteXpubUtxoGet(xpub: xpub, limit: limit) { (response, error) in
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
 **xpub** | **String** | the requested xpub | 
 **limit** | **Int** | The max items returned in this query(default 300), not bigger than 5000. | [optional] 

### Return type

[**[XpubUtxo]**](XpubUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

