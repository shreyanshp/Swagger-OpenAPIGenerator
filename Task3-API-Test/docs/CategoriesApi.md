# CategoriesApi

All URIs are relative to *http://localhost:3030*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCategory**](CategoriesApi.md#addCategory) | **POST** /categories | 
[**deletecategory**](CategoriesApi.md#deletecategory) | **DELETE** /categories/{id} | 
[**findCategories**](CategoriesApi.md#findCategories) | **GET** /categories | 
[**findCategoryById**](CategoriesApi.md#findCategoryById) | **GET** /categories/{id} | 
[**updateCategoryById**](CategoriesApi.md#updateCategoryById) | **PATCH** /categories/{id} | 


<a name="addCategory"></a>
# **addCategory**
> addCategory(category)



Creates a new category

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

CategoriesApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).categories();

api.addCategory()
    .body(category).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**Category**](Category.md)| Category to add |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletecategory"></a>
# **deletecategory**
> deletecategory(id)



Deletes a single category based on the ID supplied

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

CategoriesApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).categories();

api.deletecategory()
    .idPath(id).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of category to delete |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="findCategories"></a>
# **findCategories**
> List&lt;Category&gt; findCategories($limit, $skip)



Returns all categories that match the given filter criteria. If no filters are included, defaults to returning a paginated list of all categories.

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

CategoriesApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).categories();

api.findCategories().execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **$limit** | **Integer**| Limit the number of categories returned. | [optional]
 **$skip** | **Integer**| Skip the specified number of categories. | [optional]

### Return type

[**List&lt;Category&gt;**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="findCategoryById"></a>
# **findCategoryById**
> Category findCategoryById(id)



Returns a categories based on category ID

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

CategoriesApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).categories();

api.findCategoryById()
    .idPath(id).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of category to fetch |

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateCategoryById"></a>
# **updateCategoryById**
> Category updateCategoryById(id, category)



Updates a categories based on category ID

### Example
```java
// Import classes:
//import org.openapitools.client.ApiClient;
//import io.restassured.builder.RequestSpecBuilder;
//import io.restassured.filter.log.ErrorLoggingFilter;

CategoriesApi api = ApiClient.api(ApiClient.Config.apiConfig().withReqSpecSupplier(
                () -> new RequestSpecBuilder()
                        .setBaseUri("http://localhost:3030"))).categories();

api.updateCategoryById()
    .idPath(id)
    .body(category).execute(r -> r.prettyPeek());
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Long**| ID of category to update |
 **category** | [**Category**](Category.md)| Category attributes to update |

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

