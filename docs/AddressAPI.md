# AddressAPI

All URIs are relative to *https://testnet.mvcapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressAddressBalanceGet**](AddressAPI.md#addressaddressbalanceget) | **GET** /address/{address}/balance | Get address balance by specific address.
[**addressAddressTxGet**](AddressAPI.md#addressaddresstxget) | **GET** /address/{address}/tx | Get address history by specific address(recent 10 days available).
[**addressAddressUtxoGet**](AddressAPI.md#addressaddressutxoget) | **GET** /address/{address}/utxo | Get address utxos by specific address(100 per page).


# **addressAddressBalanceGet**
```swift
    open class func addressAddressBalanceGet(address: String, completion: @escaping (_ data: AddressBalance?, _ error: Error?) -> Void)
```

Get address balance by specific address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address

// Get address balance by specific address.
AddressAPI.addressAddressBalanceGet(address: address) { (response, error) in
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

[**AddressBalance**](AddressBalance.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressAddressTxGet**
```swift
    open class func addressAddressTxGet(address: String, flag: String? = nil, confirmed: Bool? = nil, completion: @escaping (_ data: [AddressTx]?, _ error: Error?) -> Void)
```

Get address history by specific address(recent 10 days available).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let flag = "flag_example" // String | The last id of the last query(Paging flag) (optional)
let confirmed = true // Bool | (default true) fetch confirmed tx, fetch unconfirmed tx if false (optional)

// Get address history by specific address(recent 10 days available).
AddressAPI.addressAddressTxGet(address: address, flag: flag, confirmed: confirmed) { (response, error) in
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
 **flag** | **String** | The last id of the last query(Paging flag) | [optional] 
 **confirmed** | **Bool** | (default true) fetch confirmed tx, fetch unconfirmed tx if false | [optional] 

### Return type

[**[AddressTx]**](AddressTx.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressAddressUtxoGet**
```swift
    open class func addressAddressUtxoGet(address: String, flag: String? = nil, completion: @escaping (_ data: [AddressUtxo]?, _ error: Error?) -> Void)
```

Get address utxos by specific address(100 per page).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let address = "address_example" // String | the requested address
let flag = "flag_example" // String | The last id of the last query(Paging flag) (optional)

// Get address utxos by specific address(100 per page).
AddressAPI.addressAddressUtxoGet(address: address, flag: flag) { (response, error) in
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
 **flag** | **String** | The last id of the last query(Paging flag) | [optional] 

### Return type

[**[AddressUtxo]**](AddressUtxo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

