//
//  APIErrorResult.swift
//  Pods
//
//  Created by John Neyer on 8/24/17.
//
//

import Foundation

public class APIErrorResult : NSError {
    var apiError : APIError?
    
    init(errorFromAPI : APIError?){
        
        let userInfo : [String : AnyObject] = {
            if let err = errorFromAPI{
                return ["apiError" : err]
            }else{
                return ["apiError" : "Generic Error" as AnyObject]
            }
        }()
        
        super.init(domain: "com.oramind.error", code: -101, userInfo: userInfo)
        self.apiError = errorFromAPI
    }
    
    func errorMessage() -> String {
        guard let apierr = self.apiError, let errName = apierr.errorName else { return "Generic error" }
        return errName;
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
