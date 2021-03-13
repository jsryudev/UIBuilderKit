//
//  UILabelBuilder.swift
//  UIBuilderKit
//
//  Created by JunSang Ryu on 2021/03/13.
//

import UIKit

open class UILabelBuilder: BuilderType {
  public typealias Init = BuilderInitType
  typealias Target = UILabel

  public enum FontType {
    case system // .systemFont
    case italic // .italicSystemFont
    case bold   // .boldSystemFont
    case custom(UIFont?)
  }

  // MARK: Properties
  private var frame: CGRect = .zero
  private var text: String? // default is nil
  private var font: UIFont? // default is nil (system font 17 plain)
  private var textColor: UIColor? // default is nil or labelColor (iOS 13.0)
  private var shadowColor: UIColor? // default is nil (no shadow)
  private var shadowOffset: CGSize // default is CGSizeMake(0, -1) -- a top shadow
  private var textAlignment: NSTextAlignment // default is NSTextAlignmentNatural (before iOS 9, the default was NSTextAlignmentLeft)
  private var lineBreakMode: NSLineBreakMode // default is NSLineBreakByTruncatingTail. used for single and multiple lines of text
  private var attributedText: NSAttributedString? // default is nil
  private var highlightedTextColor: UIColor? // default is nil
  private var isHighlighted: Bool // default is NO
  private var isUserInteractionEnabled: Bool // default is NO
  private var isEnabled: Bool // default is YES. changes how the label is drawn
  private var numberOfLines: Int // default is 1
  private var adjustsFontSizeToFitWidth: Bool // default is NO
  private var minimumScaleFactor: CGFloat // default is 0

  // MARK: Initialize
  public init(_ type: Init = .appearance) {
    switch type {
    case .appearance:
      let appearance = Target.appearance()
      self.text = appearance.text
      self.font = appearance.font
      self.textColor = appearance.textColor
      self.shadowColor = appearance.shadowColor
      self.shadowOffset = appearance.shadowOffset
      self.textAlignment = appearance.textAlignment
      self.lineBreakMode = appearance.lineBreakMode
      self.attributedText = appearance.attributedText
      self.highlightedTextColor = appearance.highlightedTextColor
      self.isHighlighted = appearance.isHighlighted
      self.isUserInteractionEnabled = appearance.isUserInteractionEnabled
      self.isEnabled = appearance.isEnabled
      self.numberOfLines = appearance.numberOfLines
      self.adjustsFontSizeToFitWidth = appearance.adjustsFontSizeToFitWidth
      self.minimumScaleFactor = appearance.minimumScaleFactor

    case .defaultValue:
      if #available(iOS 13.0, *) {
        self.textColor = .label
      }

      self.shadowOffset = .init(width: 0, height: -1)
      self.textAlignment = .left
      self.lineBreakMode = .byTruncatingTail
      self.isHighlighted = false
      self.isUserInteractionEnabled = false
      self.isEnabled = true
      self.numberOfLines = 1
      self.adjustsFontSizeToFitWidth = false
      self.minimumScaleFactor = 0
    }
  }

  /// Set `UILabelBuilder`'s frame property
  open func frame(_ frame: CGRect) -> UILabelBuilder {
    self.frame = frame
    return self
  }

  /// Set `UILabelBuilder`'s text property
  open func text(_ text: String?) -> UILabelBuilder {
    self.text = text
    return self
  }

  /// Set `UILabelBuilder`'s font property
  open func font(_ font: UIFont?) -> UILabelBuilder {
    self.font = font
    return self
  }

  /// Set `UILabelBuilder`'s font property
  open func font(_ fontType: FontType, size: CGFloat = 17) -> UILabelBuilder {
    switch fontType {
    case .system:
      self.font = .systemFont(ofSize: size)
    case .italic:
      self.font = .italicSystemFont(ofSize: size)
    case .bold:
      self.font = .boldSystemFont(ofSize: size)
    case .custom(let font):
      self.font = font?.withSize(size)
    }
    return self
  }

  /// Set `UILabelBuilder`'s textColor property
  open func textColor(_ textColor: UIColor?) -> UILabelBuilder {
    self.textColor = textColor
    return self
  }

  /// Set `UILabelBuilder`'s shadowColor property
  open func shadowColor(_ shadowColor: UIColor?) -> UILabelBuilder {
    self.shadowColor = shadowColor
    return self
  }

  /// Set `UILabelBuilder`'s shadowOffset property
  open func shadowOffset(_ shadowOffset: CGSize) -> UILabelBuilder {
    self.shadowOffset = shadowOffset
    return self
  }

  /// Set `UILabelBuilder`'s textAlignment property
  open func textAlignment(_ textAlignment: NSTextAlignment) -> UILabelBuilder {
    self.textAlignment = textAlignment
    return self
  }

  /// Set `UILabelBuilder`'s lineBreakMode property
  open func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> UILabelBuilder {
    self.lineBreakMode = lineBreakMode
    return self
  }

  /// Set `UILabelBuilder`'s attributedText property
  open func attributedText(_ attributedText: NSAttributedString?) -> UILabelBuilder {
    self.attributedText = attributedText
    return self
  }

  /// Set `UILabelBuilder`'s highlightedTextColor property
  open func highlightedTextColor(_ highlightedTextColor: UIColor?) -> UILabelBuilder {
    self.highlightedTextColor = highlightedTextColor
    return self
  }

  /// Set `UILabelBuilder`'s isHighlighted property
  open func isHighlighted(_ isHighlighted: Bool) -> UILabelBuilder {
    self.isHighlighted = isHighlighted
    return self
  }

  /// Set `UILabelBuilder`'s isUserInteractionEnabled property
  open func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> UILabelBuilder {
    self.isUserInteractionEnabled = isUserInteractionEnabled
    return self
  }

  /// Set `UILabelBuilder`'s isEnabled property
  open func isEnabled(_ isEnabled: Bool) -> UILabelBuilder {
    self.isEnabled = isEnabled
    return self
  }

  /// Set `UILabelBuilder`'s numberOfLines property
  open func numberOfLines(_ numberOfLines: Int) -> UILabelBuilder {
    self.numberOfLines = numberOfLines
    return self
  }

  /// Set `UILabelBuilder`'s adjustsFontSizeToFitWidth property
  open func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> UILabelBuilder {
    self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
    return self
  }

  /// Set `UILabelBuilder`'s minimumScaleFactor property
  open func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> UILabelBuilder {
    self.minimumScaleFactor = minimumScaleFactor
    return self
  }

  /// Construct an `UILabel` with the set properties.
  open func build() -> UILabel {
    let label = UILabel()
    label.frame = self.frame
    label.text = self.text
    label.font = self.font
    label.textColor = self.textColor
    label.shadowColor = self.shadowColor
    label.shadowOffset = self.shadowOffset
    label.textAlignment = self.textAlignment
    label.lineBreakMode = self.lineBreakMode
    label.attributedText = self.attributedText
    label.highlightedTextColor = self.highlightedTextColor
    label.isHighlighted = self.isHighlighted
    label.isUserInteractionEnabled = self.isUserInteractionEnabled
    label.isEnabled = self.isEnabled
    label.numberOfLines = self.numberOfLines
    label.adjustsFontSizeToFitWidth = self.adjustsFontSizeToFitWidth
    label.minimumScaleFactor = self.minimumScaleFactor
    return label
  }
}
