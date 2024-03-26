//
//  File.swift
//  
//
//  Created by ilhan serhan ipek on 4.03.2024.
//

import Foundation


public class Auth {
  var x = AuthEndPoint.customerSignIn
  public func login() {
    print("print \(x.baseURL)")
    print("print \(x.path)")
    print("print \(x.method)")
    print("print \(x.request())")
  }
}
