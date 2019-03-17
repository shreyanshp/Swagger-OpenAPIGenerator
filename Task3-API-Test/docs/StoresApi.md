# StoresApi

All URIs are relative to *http://localhost:3030*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addStore**](StoresApi.md#addStore) | **POST** /stores | 
[**deletestore**](StoresApi.md#deletestore) | **DELETE** /stores/{id} | 
[**findStoreById**](StoresApi.md#findStoreById) | **GET** /stores/{id} | 
[**findStores**](StoresApi.md#findStores) | **GET** /stores | 
[**updateStoreById**](StoresApi.md#updateStoreById) | **PATCH** /stores/{id} | 


<a name="addStore"></a>
# **addStore**
> addStore(store)



Creates a new store

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

StoresApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).stores();

api.addStore()
    .body(store).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store** | [**Store**](Store.md)| Store to add |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletestore"></a>
# **deletestore**
> deletestore(id)



Deletes a single store based on the ID supplied

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

StoresApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).stores();

api.deletestore()
    .idPath(id).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of store to delete |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="findStoreById"></a>
# **findStoreById**
> Store findStoreById(id)



Returns a store based on store ID

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

StoresApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).stores();

api.findStoreById()
    .idPath(id).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of store to fetch |

### Return type

[**Store**](Store.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="findStores"></a>
# **findStores**
> List&lt;Store&gt; findStores($limit, $skip)



Returns all stores that match the given filter criteria. If no filters are included, defaults to returning a paginated list of all stores.

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

StoresApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).stores();

api.findStores().execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **$limit** | **Integer**| Limit the number of stores returned. | [optional]
 **$skip** | **Integer**| Skip the specified number of stores. | [optional]

### Return type

[**List&lt;Store&gt;**](Store.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateStoreById"></a>
# **updateStoreById**
> Store updateStoreById(id, store)



Updates a store based on store ID

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

StoresApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).stores();

api.updateStoreById()
    .idPath(id)
    .body(store).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of store to update |
 **store** | [**Store**](Store.md)| Store attributes to update |

### Return type

[**Store**](Store.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

