# TreasuryAPI

All URIs are relative to *https://testnet.mvcapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**treasuryGet**](TreasuryAPI.md#treasuryget) | **GET** /treasury | Get current treasury info.
[**treasuryHistoryGet**](TreasuryAPI.md#treasuryhistoryget) | **GET** /treasury/history | Get all treasury history.


# **treasuryGet**
```swift
    open class func treasuryGet(completion: @escaping (_ data: TreasuryInfo?, _ error: Error?) -> Void)
```

Get current treasury info.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient


// Get current treasury info.
TreasuryAPI.treasuryGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**TreasuryInfo**](TreasuryInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **treasuryHistoryGet**
```swift
    open class func treasuryHistoryGet(completion: @escaping (_ data: [TreasuryHistory]?, _ error: Error?) -> Void)
```

Get all treasury history.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient


// Get all treasury history.
TreasuryAPI.treasuryHistoryGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**[TreasuryHistory]**](TreasuryHistory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

