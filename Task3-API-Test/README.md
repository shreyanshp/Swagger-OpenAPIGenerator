# Task 3

## Test Cases -
From functional tests perspective

### For GET API's

Response Code 200
- Check whether the query response has a statusCode - 200
Response Code 401 (We can skip this as there is no authorization required for any of the API's)
Response Code 404 (We can skip this, as our API endpoints are correctly defined)
Response Code 500
- Check whether the query response has a statusCode - 500
Example -
> {
     "name": "GeneralError",
     "message": "SQLITE_ERROR: no such column: NaN",
     "code": 500,
     "className": "general-error",
     "data": {},
     "errors": {}
   }

### FOR POST API's
Response Code 200/201
- Check whether the query response has a statusCode - 200/201
Example -
> Response Body
  {
    "name": "shreyansh",
    "id": "87",
    "updatedAt": "2019-03-17T03:40:19.989Z",
    "createdAt": "2019-03-17T03:40:19.989Z"
  }
  Response Code
  201
  Response Headers
  {
    "date": "Sun, 17 Mar 2019 03:40:19 GMT",
    "allow": "GET,POST,PUT,PATCH,DELETE",
    "x-powered-by": "Express",
    "etag": "W/\"6c-jcwu7rUxRkxCMxapd443F7Ie4T4\"",
    "vary": "Accept, Accept-Encoding",
    "content-type": "application/json; charset=utf-8",
    "access-control-allow-origin": "*",
    "connection": "keep-alive",
    "content-length": "108"
  }
Response Code 400
> Response Body
  {
    "name": "BadRequest",
    "message": "Validation error",
    "code": 400,
    "className": "bad-request",
    "errors": [
      {
        "message": "id must be unique",
        "type": "unique violation",
        "path": "id",
        "value": "87"
      }
    ]
  }
  Response Code
  400
  Response Headers
  {
    "date": "Sun, 17 Mar 2019 03:41:57 GMT",
    "vary": "Accept-Encoding",
    "x-powered-by": "Express",
    "etag": "W/\"b5-BnJudAqfeAnP4GadvifLvTU5n2g\"",
    "allow": "GET,POST,PUT,PATCH,DELETE",
    "content-type": "application/json; charset=utf-8",
    "access-control-allow-origin": "*",
    "connection": "keep-alive",
    "content-length": "181"
  }

One more 400
Example -
> Response Body
  {
    "name": "BadRequest",
    "message": "Invalid Parameters",
    "code": 400,
    "className": "bad-request",
    "data": {},
    "errors": [
      "should have required property 'name'"
    ]
  }
  Response Code
  400
  Response Headers
  {
    "date": "Sun, 17 Mar 2019 03:43:08 GMT",
    "vary": "Accept-Encoding",
    "x-powered-by": "Express",
    "etag": "W/\"95-aJOslJerDos07nUgN912Mswm21Y\"",
    "allow": "GET,POST,PUT,PATCH,DELETE",
    "content-type": "application/json; charset=utf-8",
    "access-control-allow-origin": "*",
    "connection": "keep-alive",
    "content-length": "149"
  }

Response Code 401 (We can skip this as there is no authorization required for any of the API's)
Response Code 404 (We can skip this, as our API endpoints are correctly defined)
Response Code 500
- Check whether the query response has a statusCode - 500
> {
    "name": "GeneralError",
    "message": "Unexpected token } in JSON at position 22",
    "code": 500,
    "className": "general-error",
    "data": {},
    "errors": {}
  }
  Response Code
  500
  Response Headers
  {
    "date": "Sun, 17 Mar 2019 03:41:33 GMT",
    "x-powered-by": "Express",
    "etag": "W/\"8a-dRVI9AsiLr2mhd88k8GarLtGuAM\"",
    "vary": "Accept-Encoding",
    "content-type": "application/json; charset=utf-8",
    "access-control-allow-origin": "*",
    "connection": "keep-alive",
    "content-length": "138"
  }



## BestBuy API Test Docs
[RestAssured Tests](docs)

## Testing API's using Swagger Spec
Since Swagger Spec, was specified, we used that Spec (converted to YAML) and used [OpenApi Generator](https://openapi-generator.tech) which helps in generating generic test cases and (even stubs) based on Swagger Spec

Command Used - 
> java -jar openapi-generator-cli-3.3.4.jar generate -i bby.yaml -g java --library rest-assured -o Task3-API-Test/ 

Files Used (present in same repo) -
[BestBuy Swagger YAML](bby.yaml)
[OpenApi Generator CLI](openapi-generator-cli-3.3.4.jar)

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation & Usage

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

To run all the tests:

```shell
mvn clean test
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

After the client library is installed/deployed, you can use it in your Maven project by adding the following to your *pom.xml*:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-java-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>

```

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Uses - https://github.com/OpenAPITools/openapi-generator

## Author

shreyanshpandey08@gmail.com

## PS - Due to lack of time, I don't blame anyone, as I had a production issue in my current paying job,  I could not create those assertion in the functions 


