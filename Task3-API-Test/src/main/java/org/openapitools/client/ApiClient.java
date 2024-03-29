/*
 * Best Buy API Playground
 * A sample dataset and API for you to experiment with.
 *
 * OpenAPI spec version: 1.1.0
 * Contact: developer@bestbuy.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client;

import org.openapitools.client.api.*;

import io.restassured.builder.RequestSpecBuilder;
import java.util.function.Consumer;
import java.util.function.Supplier;

import static io.restassured.config.ObjectMapperConfig.objectMapperConfig;
import static io.restassured.config.RestAssuredConfig.config;
import static org.openapitools.client.GsonObjectMapper.gson;

public class ApiClient {
    public static final String BASE_URI = "http://localhost:3030";

    private final Config config;

    private ApiClient(Config config) {
        this.config = config;
    }

    public static ApiClient api(Config config) {
        return new ApiClient(config);
    }

    public CategoriesApi categories() {
        return CategoriesApi.categories(config.baseReqSpec.get());
    }
    public ProductsApi products() {
        return ProductsApi.products(config.baseReqSpec.get());
    }
    public ServicesApi services() {
        return ServicesApi.services(config.baseReqSpec.get());
    }
    public StoresApi stores() {
        return StoresApi.stores(config.baseReqSpec.get());
    }
    public UtilitiesApi utilities() {
        return UtilitiesApi.utilities(config.baseReqSpec.get());
    }

    public static class Config {
        private Supplier<RequestSpecBuilder> baseReqSpec = () -> new RequestSpecBuilder()
                .setBaseUri(BASE_URI)
                .setConfig(config().objectMapperConfig(objectMapperConfig().defaultObjectMapper(gson())));

        /**
         * Use common specification for all operations
         * @param supplier supplier
         * @return configuration
         */
        public Config reqSpecSupplier(Supplier<RequestSpecBuilder> supplier) {
            this.baseReqSpec = supplier;
            return this;
        }

        public static Config apiConfig() {
            return new Config();
        }
    }
}