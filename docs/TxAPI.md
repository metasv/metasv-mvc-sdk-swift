# TxAPI

All URIs are relative to *https://testnet.mvcapi.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**txBroadcastBatchPost**](TxAPI.md#txbroadcastbatchpost) | **POST** /tx/broadcast/batch | Broadcast a batch of tx to MvcApi fullnode. This endpoint use rpc sendrawtransactions.
[**txBroadcastPost**](TxAPI.md#txbroadcastpost) | **POST** /tx/broadcast | Broadcast tx to MvcApi fullnode.
[**txTxidGet**](TxAPI.md#txtxidget) | **GET** /tx/{txid} | Get transaction detail by specific txid.
[**txTxidRawGet**](TxAPI.md#txtxidrawget) | **GET** /tx/{txid}/raw | Get transaction raw hex by specific txid.
[**txTxidSeenGet**](TxAPI.md#txtxidseenget) | **GET** /tx/{txid}/seen | Whether MvcApi have seen this tx before. This is a fast approach to know if the tx exist or not.
[**vinTxidDetailGet**](TxAPI.md#vintxiddetailget) | **GET** /vin/{txid}/detail | Get all output point of vins in the tx with detailed output script.


# **txBroadcastBatchPost**
```swift
    open class func txBroadcastBatchPost(txRaw: [TxRaw]? = nil, completion: @escaping (_ data: BatchBroadcastResult?, _ error: Error?) -> Void)
```

Broadcast a batch of tx to MvcApi fullnode. This endpoint use rpc sendrawtransactions.

This api will broadcast to MvcApi fullnode directly.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let txRaw = [TxRaw(hex: "hex_example")] // [TxRaw] |  (optional)

// Broadcast a batch of tx to MvcApi fullnode. This endpoint use rpc sendrawtransactions.
TxAPI.txBroadcastBatchPost(txRaw: txRaw) { (response, error) in
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
 **txRaw** | [**[TxRaw]**](TxRaw.md) |  | [optional] 

### Return type

[**BatchBroadcastResult**](BatchBroadcastResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txBroadcastPost**
```swift
    open class func txBroadcastPost(txRaw: TxRaw? = nil, completion: @escaping (_ data: BroadcastResult?, _ error: Error?) -> Void)
```

Broadcast tx to MvcApi fullnode.

This api will broadcast to MvcApi fullnode directly. This endpoint use rpc sendrawtransaction.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let txRaw = TxRaw(hex: "hex_example") // TxRaw |  (optional)

// Broadcast tx to MvcApi fullnode.
TxAPI.txBroadcastPost(txRaw: txRaw) { (response, error) in
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
 **txRaw** | [**TxRaw**](TxRaw.md) |  | [optional] 

### Return type

[**BroadcastResult**](BroadcastResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txTxidGet**
```swift
    open class func txTxidGet(txid: String, showScript: Bool? = nil, completion: @escaping (_ data: TxDetail?, _ error: Error?) -> Void)
```

Get transaction detail by specific txid.

This api is parsed from raw hex, you can use /tx/{txid}/raw to parse tx by yourself, If you want detail input info, use '/vin/{txid}' to get detailed input info including address and value.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let txid = "txid_example" // String | the request ID to search, txhash
let showScript = true // Bool | Return source script code or not (default false). (optional)

// Get transaction detail by specific txid.
TxAPI.txTxidGet(txid: txid, showScript: showScript) { (response, error) in
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
 **txid** | **String** | the request ID to search, txhash | 
 **showScript** | **Bool** | Return source script code or not (default false). | [optional] 

### Return type

[**TxDetail**](TxDetail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txTxidRawGet**
```swift
    open class func txTxidRawGet(txid: String, completion: @escaping (_ data: TxRaw?, _ error: Error?) -> Void)
```

Get transaction raw hex by specific txid.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let txid = "txid_example" // String | the request ID to search, txhash

// Get transaction raw hex by specific txid.
TxAPI.txTxidRawGet(txid: txid) { (response, error) in
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
 **txid** | **String** | the request ID to search, txhash | 

### Return type

[**TxRaw**](TxRaw.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **txTxidSeenGet**
```swift
    open class func txTxidSeenGet(txid: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Whether MvcApi have seen this tx before. This is a fast approach to know if the tx exist or not.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let txid = "txid_example" // String | the request ID to search, txhash

// Whether MvcApi have seen this tx before. This is a fast approach to know if the tx exist or not.
TxAPI.txTxidSeenGet(txid: txid) { (response, error) in
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
 **txid** | **String** | the request ID to search, txhash | 

### Return type

**Bool**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vinTxidDetailGet**
```swift
    open class func vinTxidDetailGet(txid: String, completion: @escaping (_ data: [OutputInfoDetail]?, _ error: Error?) -> Void)
```

Get all output point of vins in the tx with detailed output script.

Search output points by spent txid. Use this api to get detailed inputs for the tx.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MvcApiClient

let txid = "txid_example" // String | The txid of the vins

// Get all output point of vins in the tx with detailed output script.
TxAPI.vinTxidDetailGet(txid: txid) { (response, error) in
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
 **txid** | **String** | The txid of the vins | 

### Return type

[**[OutputInfoDetail]**](OutputInfoDetail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

