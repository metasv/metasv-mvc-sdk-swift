# MerchantAPI

All URIs are relative to *https://api-mvc-testnet.metasv.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**merchantUtxoPost**](MerchantAPI.md#merchantutxopost) | **POST** /merchant/utxo | Pick utxos by addresses and amount.


# **merchantUtxoPost**
```swift
    open class func merchantUtxoPost(utxoPickRequest: UtxoPickRequest? = nil, completion: @escaping (_ data: [AddressUtxo]?, _ error: Error?) -> Void)
```

Pick utxos by addresses and amount.

Selects a set of Utxos with total value higher than the given amount from a given address list . In case of HD wallets, multiple addresses can be specified.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaSVMvcClient

let utxoPickRequest = UtxoPickRequest(addresses: ["addresses_example"], amount: 123) // UtxoPickRequest |  (optional)

// Pick utxos by addresses and amount.
MerchantAPI.merchantUtxoPost(utxoPickRequest: utxoPickRequest) { (response, error) in
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
 **utxoPickRequest** | [**UtxoPickRequest**](UtxoPickRequest.md) |  | [optional] 

### Return type

[**[AddressUtxo]**](AddressUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

