# OutpointAPI

All URIs are relative to *https://testnet.mvcapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**outpointTxidIndexGet**](OutpointAPI.md#outpointtxidindexget) | **GET** /outpoint/{txid}/{index} | Get tx output(outpoint for vin) spent status.


# **outpointTxidIndexGet**
```swift
    open class func outpointTxidIndexGet(txid: String, index: Int, completion: @escaping (_ data: OutputInfo?, _ error: Error?) -> Void)
```

Get tx output(outpoint for vin) spent status.

Get detailed info for a utxo(or txo if spent), Only outputs spent no longer than one month are available. (Premium feature will support full history)

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let txid = "txid_example" // String | The txid of the output
let index = 987 // Int | The index of the output in the tx.

// Get tx output(outpoint for vin) spent status.
OutpointAPI.outpointTxidIndexGet(txid: txid, index: index) { (response, error) in
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
 **txid** | **String** | The txid of the output | 
 **index** | **Int** | The index of the output in the tx. | 

### Return type

[**OutputInfo**](OutputInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

