//
//  UIButtonBuilder.swift
//  UIBuilderKit
//
//  Created by JunSang Ryu on 2021/03/13.
//

import UIKit

open class UIButtonBuilder: BuilderType {
  public typealias Init = BuilderInitType
  typealias Target = UIButton

  private var contentEdgeInsets: UIEdgeInsets
  private var titleEdgeInsets: UIEdgeInsets
  private var reversesTitleShadowWhenHighlighted: Bool
  private var imageEdgeInsets: UIEdgeInsets
  private var adjustsImageWhenHighlighted: Bool
  private var adjustsImageWhenDisabled: Bool
  private var showsTouchWhenHighlighted: Bool
  private var tintColor: UIColor?

  init(_ type: Init = .appearance) {
    switch type {
    case .appearance:
      let appearance = UIButton.appearance()
      self.contentEdgeInsets = appearance.contentEdgeInsets // default is UIEdgeInsetsZero
      self.titleEdgeInsets = appearance.titleEdgeInsets // default is UIEdgeInsetsZero
      self.reversesTitleShadowWhenHighlighted = appearance.reversesTitleShadowWhenHighlighted // default is NO
      self.imageEdgeInsets = appearance.imageEdgeInsets // default is UIEdgeInsetsZero
      self.adjustsImageWhenHighlighted = appearance.adjustsImageWhenHighlighted // default is YES
      self.adjustsImageWhenDisabled = appearance.adjustsImageWhenDisabled // default is YES
      self.showsTouchWhenHighlighted = appearance.showsTouchWhenHighlighted // default is NO
      self.tintColor = appearance.tintColor //

    case .defaultValue:
      self.contentEdgeInsets = .zero
      self.titleEdgeInsets = .zero
      self.reversesTitleShadowWhenHighlighted = false
      self.imageEdgeInsets = .zero
      self.adjustsImageWhenHighlighted = true
      self.adjustsImageWhenDisabled = true
      self.showsTouchWhenHighlighted = false
    }
  }

  func build() -> UIButton {
    let button = UIButton()
    button.contentEdgeInsets = self.contentEdgeInsets
    button.titleEdgeInsets = self.titleEdgeInsets
    button.reversesTitleShadowWhenHighlighted = self.reversesTitleShadowWhenHighlighted
    button.imageEdgeInsets = self.imageEdgeInsets
    button.adjustsImageWhenHighlighted = self.adjustsImageWhenHighlighted
    button.adjustsImageWhenDisabled = self.adjustsImageWhenDisabled
    button.showsTouchWhenHighlighted = self.showsTouchWhenHighlighted
    button.tintColor = self.tintColor
    return button
  }
}
