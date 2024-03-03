//
//  File.swift
//  
//
//  Created by ilhan serhan ipek on 3.03.2024.
//

import Foundation
import SwiftUI

open class VendorBase {

  class x {
    var y : String

    init(y: String) {
      self.y = y
    }

    func sayHello() {
      print(y)
    }
  }
}

func sayHi() {

  VendorBase.x(y: "f").sayHello()
}





