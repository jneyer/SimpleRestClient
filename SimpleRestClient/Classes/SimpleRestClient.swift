//
//  SimpleRestClient.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation
import PromiseKit
import Alamofire
import ObjectMapper


public class SimpleRestClient : NSObject {
    
    private var url : String;
    private var apiKey : String?;
    private var headers : HTTPHeaders?;
    
    private init(url: String, apiKey: String?) {
        self.url = url;

        if (apiKey != nil) {
            self.apiKey = apiKey;
            headers = [
                "x-api-key": apiKey!,
                "Accept": "application/json"
            ]
        }
    }
    
    public static func defaultClient(url: String, apiKey: String?) -> SimpleRestClient {
        return SimpleRestClient(url: url, apiKey: apiKey);
    }
    
    //HTTP operations
    public func get<T : Mappable>(route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        return self.httpOperation(method: .get, route: route, parameters : parameters);
    }
    
    public func post<T : Mappable>(route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        return self.httpOperation(method: .post, route: route, parameters: parameters)
    }
    
    public func put<T : Mappable>(route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        return self.httpOperation(method: .put, route: route, parameters: parameters)
    }
    
    public func delete<T : Mappable>(route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        return self.httpOperation(method: .delete, route: route, parameters: parameters)
    }
    
    private func httpOperation<T : Mappable>(method : HTTPMethod, route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        
        return Promise<T?> { (fulfill, reject) -> Void in
            
            func parsingError(erroString : String) -> NSError {
                return NSError(domain: "org.septa.error", code: -100, userInfo: nil)
            }
            
            request(route.URLString, method: method, parameters: parameters, headers: headers).responseJSON { (response) -> Void in
                
//                if let data = response.data
//                {
//                    print("\(String(data: data, encoding: String.Encoding.utf8))");
//                }
//                
                
                print(response.result.value)   // result of response serialization
                
                if let error = response.result.error {
                    reject(error) //network error
                }
                else {
                    
                    if let apiResponse = Mapper<T>().map(JSONObject: response.result.value)
                    {
                        if response.result.isSuccess
                        {
                            fulfill(apiResponse)
                        }
                        else {
//                            if let logicalerror = apiResponse.error {
//                                reject(APIErrorResult(errorFromAPI: logicalerror))
//                            }
//                            else {
//                                reject(APIErrorResult(errorFromAPI: nil))
//                            }
                            reject(APIErrorResult(errorFromAPI: nil))
                        }
                    }
                    else {
                        let err = NSError(domain: "org.septa.error", code: -101, userInfo: nil)
                        reject(err)
                    }
                }
            }
        }
    }
    

}
