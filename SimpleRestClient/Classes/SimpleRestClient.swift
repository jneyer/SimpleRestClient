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
    
    private var apiKey : String;
    private var url : String;
    
    private init(apiKey: String, url: String) {
        self.apiKey = apiKey;
        self.url = url;
    }
    
    public static func defaultClient(apiKey: String, url: String) -> SimpleRestClient {
        return SimpleRestClient(apiKey: apiKey, url: url);
    }
    
    //MARK: Helper functions
    public func post<T : Mappable>(route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        return self.httpOperation(method: .post, route: route, parameters: parameters)
    }
    
    public func get<T : Mappable>(route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        return self.httpOperation(method: .get, route: route, parameters : parameters);
    }
    
    private func httpOperation<T : Mappable>(method : HTTPMethod, route : HTTPRouter, parameters : [String : AnyObject]? = nil) -> Promise<T?> {
        
        return Promise<T?> { (fulfill, reject) -> Void in
            
            func parsingError(erroString : String) -> NSError {
                return NSError(domain: "com.oramind.error", code: -100, userInfo: nil)
            }
            
            request(route.URLString, method: method, parameters: parameters).responseJSON { (response) -> Void in
                if let data = response.data {
                    print("\(String(data: data, encoding: String.Encoding.utf8))");
                }
                print(response.result.value)   // result of response serialization
                if let error = response.result.error {
                    reject(error) //network error
                }else {
                    if let apiResponse = Mapper<APIResponse<T>>().map(JSONObject: response.result.value) {
                        if apiResponse.success {
                            fulfill(apiResponse.response)
                        }else{
                            if let logicalerror = apiResponse.error {
                                reject(APIErrorResult(errorFromAPI: logicalerror))
                            }else{
                                reject(APIErrorResult(errorFromAPI: nil))
                            }
                        }
                    }else{
                        let err = NSError(domain: "com.oramind.error", code: -101, userInfo: nil)
                        reject(err)
                    }
                }
            }
        }
    }
    

}
