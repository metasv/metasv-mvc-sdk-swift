# BlockAPI

All URIs are relative to *https://api-mvc-testnet.metasv.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blockBlockIdGet**](BlockAPI.md#blockblockidget) | **GET** /block/{blockId} | Get block request by height or hash
[**blockGet**](BlockAPI.md#blockget) | **GET** /block | Get recent block list by paging. 30 items per page.
[**blockInfoGet**](BlockAPI.md#blockinfoget) | **GET** /block/info | Get current blockchain info from full node.


# **blockBlockIdGet**
```swift
    open class func blockBlockIdGet(blockId: String, completion: @escaping (_ data: BlockHeader?, _ error: Error?) -> Void)
```

Get block request by height or hash

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaSVMvcClient

let blockId = "blockId_example" // String | The block id, height or hash acceptable.

// Get block request by height or hash
BlockAPI.blockBlockIdGet(blockId: blockId) { (response, error) in
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
 **blockId** | **String** | The block id, height or hash acceptable. | 

### Return type

[**BlockHeader**](BlockHeader.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blockGet**
```swift
    open class func blockGet(last: Int64? = nil, completion: @escaping (_ data: [BlockHeader]?, _ error: Error?) -> Void)
```

Get recent block list by paging. 30 items per page.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaSVMvcClient

let last = 987 // Int64 | paging flag, height of last item in last page (optional)

// Get recent block list by paging. 30 items per page.
BlockAPI.blockGet(last: last) { (response, error) in
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
 **last** | **Int64** | paging flag, height of last item in last page | [optional] 

### Return type

[**[BlockHeader]**](BlockHeader.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blockInfoGet**
```swift
    open class func blockInfoGet(completion: @escaping (_ data: BlockchainInfo?, _ error: Error?) -> Void)
```

Get current blockchain info from full node.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MetaSVMvcClient


// Get current blockchain info from full node.
BlockAPI.blockInfoGet() { (response, error) in
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

[**BlockchainInfo**](BlockchainInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

