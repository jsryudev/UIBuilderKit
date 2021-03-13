//
//  BuildersType.swift
//  UIBuilderKit
//
//  Created by JunSang Ryu on 2021/03/13.
//

import Foundation

protocol BuilderType {
  associatedtype Init
  associatedtype Target

  func build() -> Target
}

public enum BuilderInitType {
  case appearance
  case defaultValue
}
