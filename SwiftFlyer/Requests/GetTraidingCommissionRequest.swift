//
//  GetTraidingCommissionRequest.swift
//  SwiftFlyer
//
//  Created by Ryo Ishikawa on 2018/01/28.
//  Copyright © 2017 Ryo Ishikawa. All rights reserved.
//

import Foundation

public final class GetTraidingCommissionRequest: Requestable {
    
    public typealias Response = TraidingCommission
    
    public var path: String {
        return "/v1/me/gettradingcommission"
    }
    
    public var httpMethod: HTTPMethod {
        return .get
    }
    
    public var isAuthorizedRequest: Bool {
        return true
    }
    
    public var queryParameters: [String : Any] {
        var q: [String: Any] = [:]
        q.appendingQueryParameter(key: "product_code", value: productCode)
        return q
    }

    public let productCode: ProductCode
    
    public init(productCode: ProductCode) {
        self.productCode = productCode
    }
}

