//
//  File.swift
//  
//
//  Created by ilhan serhan ipek on 4.03.2024.
//

import Foundation


open class Auth {
  open class auth {

    private let customerSignIn = AuthEndPoint.customerSignIn
    private let customerSignUp = AuthEndPoint.customerSignUp
    private let vendorSignIn = AuthEndPoint.vendorSignIn
    private let vendorSignUp = AuthEndPoint.vendorSignUp
    

    public init() { }

    open func signIn(with email: String, password: String) {

    }
  }

}
