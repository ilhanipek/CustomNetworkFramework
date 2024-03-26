//
//  File.swift
//  
//
//  Created by ilhan serhan ipek on 4.03.2024.
//

import Foundation
import SwiftUI

protocol AuthProtocol {
  var baseURL : String { get }
  var path: String { get }
  var method : HTTPMethod { get }
  var header : [String : String]? { get }

  func request() -> URLRequest
}

enum BaseUrlType : String {
  case customer = ""
  case vendor = " "
}

enum AuthEndPoint {
  case customerSignIn
  case customerSignUp
  case vendorSignIn
  case vendorSignUp
}

extension AuthEndPoint : AuthProtocol {
  var baseURL: String {
    switch self {
    case .customerSignIn:
      BaseUrlType.customer.rawValue
    case .customerSignUp:
      BaseUrlType.customer.rawValue
    case .vendorSignIn:
      BaseUrlType.vendor.rawValue
    case .vendorSignUp:
      BaseUrlType.vendor.rawValue
    }
  }
  
  var path: String {
    
    switch self {
    case .customerSignIn:
      return ""
    case .customerSignUp:
      return ""
    case .vendorSignIn:
      return ""
    case .vendorSignUp:
      return ""
    }
  }
  
  var method: HTTPMethod {
    switch self {
    case .customerSignIn:
      return .post
    case .customerSignUp:
      return .post
    case .vendorSignIn:
      return .post
    case .vendorSignUp:
      return .post
    }
  }
  
  var header: [String : String]? {
    return nil
  }
  
  func request() -> URLRequest {
    guard var component = URLComponents(string: baseURL) else { fatalError("Base url error")}
    component.path = path

    let url = component.url
    
    var request = URLRequest(url: url!)

    request.httpMethod = method.rawValue
    
    if let header = header {
      
      header.forEach { header in
        request.setValue(header.key, forHTTPHeaderField: header.value)
      }
    }
    return request
  }
}
