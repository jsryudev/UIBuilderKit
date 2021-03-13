//
//  UIViewBuilder.swift
//  UIBuilderKit
//
//  Created by JunSang Ryu on 2021/03/13.
//

import UIKit

open class UIViewBuilder: BuilderType {
  public typealias Init = BuilderInitType
  typealias Target = UIView

  // MARK: Properties
  private var frame: CGRect = .zero
  private var tag: Int // default is 0
  private var bounds: CGRect // default is CGRect.zero
  private var center: CGPoint // default is CGPoint.zero
  private var transform: CGAffineTransform // default is CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: 0)
  private var contentScaleFactor: CGFloat // default is 1
  private var isUserInteractionEnabled: Bool // default is YES
  private var isMultipleTouchEnabled: Bool // default is NO
  private var isExclusiveTouch: Bool // defualt is No
  private var autoresizesSubviews: Bool // default is YES
  private var autoresizingMask: UIView.AutoresizingMask // default is none
  private var layoutMargins: UIEdgeInsets // default is UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
  private var preservesSuperviewLayoutMargins: Bool // default is NO
  private var clipsToBounds: Bool // default is NO
  private var backgroundColor: UIColor? // default is nil
  private var alpha: CGFloat // default is 1
  private var isOpaque: Bool  // default is YES
  private var clearsContextBeforeDrawing: Bool // default is YES
  private var isHidden: Bool // default is false
  private var contentMode: UIView.ContentMode // default is scaleToFill
  private var mask: UIView? // default is nil
  private var tintColor: UIColor? // default is nil
  private var tintAdjustmentMode: UIView.TintAdjustmentMode // defulat is normal

  public init(_ type: Init = .appearance) {
    switch type {
    case .appearance:
      let appearance = UIView.appearance()
      self.tag = appearance.tag
      self.bounds = appearance.bounds
      self.center = appearance.center
      self.transform = appearance.transform
      self.contentScaleFactor = appearance.contentScaleFactor
      self.isUserInteractionEnabled = appearance.isUserInteractionEnabled
      self.isMultipleTouchEnabled = appearance.isMultipleTouchEnabled
      self.isExclusiveTouch = appearance.isExclusiveTouch
      self.autoresizesSubviews = appearance.autoresizesSubviews
      self.autoresizingMask = appearance.autoresizingMask
      self.layoutMargins = appearance.layoutMargins
      self.preservesSuperviewLayoutMargins = appearance.preservesSuperviewLayoutMargins
      self.clipsToBounds = appearance.clipsToBounds
      self.backgroundColor = appearance.backgroundColor
      self.alpha = appearance.alpha
      self.isOpaque = appearance.isOpaque
      self.clearsContextBeforeDrawing = appearance.clearsContextBeforeDrawing
      self.isHidden = appearance.isHidden
      self.contentMode = appearance.contentMode
      self.tintAdjustmentMode = appearance.tintAdjustmentMode

    case .defaultValue:
      if #available(iOS 13.0, *) {
        self.tintColor = .systemBlue
      }

      self.tag = 0
      self.bounds = .zero
      self.center = .zero
      self.transform = .init(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: 0)
      self.contentScaleFactor = 1
      self.isUserInteractionEnabled = true
      self.isMultipleTouchEnabled = false
      self.isExclusiveTouch = false
      self.autoresizesSubviews = true
      self.autoresizingMask = .init(rawValue: 0)
      self.layoutMargins = .init(top: 8, left: 8, bottom: 8, right: 8)
      self.preservesSuperviewLayoutMargins = false
      self.clipsToBounds = false
      self.alpha = 1
      self.isOpaque = true
      self.clearsContextBeforeDrawing = true
      self.isHidden = false
      self.contentMode = .scaleToFill
      self.tintAdjustmentMode = .normal
    }
  }

  /// Set `UIViewBuilder`'s frame property
  open func frame(_ frame: CGRect) -> UIViewBuilder {
    self.frame = frame
    return self
  }

  /// Set `UIViewBuilder`'s tag property
  open func tag(_ tag: Int) -> UIViewBuilder {
    self.tag = tag
    return self
  }

  /// Set `UIViewBuilder`'s bounds property
  open func bounds(_ bounds: CGRect) -> UIViewBuilder {
    self.bounds = bounds
    return self
  }

  /// Set `UIViewBuilder`'s center property
  open func center(_ center: CGPoint) -> UIViewBuilder {
    self.center = center
    return self
  }

  /// Set `UIViewBuilder`'s transform property
  open func transform(_ transform: CGAffineTransform) -> UIViewBuilder {
    self.transform = transform
    return self
  }

  /// Set `UIViewBuilder`'s contentScaleFactor property
  open func contentScaleFactor(_ contentScaleFactor: CGFloat) -> UIViewBuilder {
    self.contentScaleFactor = contentScaleFactor
    return self
  }

  /// Set `UIViewBuilder`'s isUserInteractionEnabled property
  open func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> UIViewBuilder {
    self.isUserInteractionEnabled = isUserInteractionEnabled
    return self
  }

  /// Set `UIViewBuilder`'s isMultipleTouchEnabled property
  open func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> UIViewBuilder {
    self.isMultipleTouchEnabled = isMultipleTouchEnabled
    return self
  }

  /// Set `UIViewBuilder`'s isExclusiveTouch property
  open func isExclusiveTouch(_ isExclusiveTouch: Bool) -> UIViewBuilder {
    self.isExclusiveTouch = isExclusiveTouch
    return self
  }

  /// Set `UIViewBuilder`'s autoresizesSubviews property
  open func autoresizesSubviews(_ autoresizesSubviews: Bool) -> UIViewBuilder {
    self.autoresizesSubviews = autoresizesSubviews
    return self
  }

  /// Set `UIViewBuilder`'s autoresizingMask property
  open func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> UIViewBuilder {
    self.autoresizingMask = autoresizingMask
    return self
  }

  /// Set `UIViewBuilder`'s layoutMargins property
  open func layoutMargins(_ layoutMargins: UIEdgeInsets) -> UIViewBuilder {
    self.layoutMargins = layoutMargins
    return self
  }

  /// Set `UIViewBuilder`'s preservesSuperviewLayoutMargins property
  open func preservesSuperviewLayoutMargins(_ preservesSuperviewLayoutMargins: Bool) -> UIViewBuilder {
    self.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins
    return self
  }

  /// Set `UIViewBuilder`'s clipsToBounds property
  open func clipsToBounds(_ clipsToBounds: Bool) -> UIViewBuilder {
    self.clipsToBounds = clipsToBounds
    return self
  }

  /// Set `UIViewBuilder`'s backgroundColor property
  open func backgroundColor(_ backgroundColor: UIColor?) -> UIViewBuilder {
    self.backgroundColor = backgroundColor
    return self
  }

  /// Set `UIViewBuilder`'s alpha property
  open func alpha(_ alpha: CGFloat) -> UIViewBuilder {
    self.alpha = alpha
    return self
  }

  /// Set `UIViewBuilder`'s isOpaque property
  open func isOpaque(_ isOpaque: Bool) -> UIViewBuilder {
    self.isOpaque = isOpaque
    return self
  }

  /// Set `UIViewBuilder`'s clearsContextBeforeDrawing property
  open func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> UIViewBuilder {
    self.clearsContextBeforeDrawing = clearsContextBeforeDrawing
    return self
  }

  /// Set `UIViewBuilder`'s isHidden property
  open func isHidden(_ isHidden: Bool) -> UIViewBuilder {
    self.isHidden = isHidden
    return self
  }

  /// Set `UIViewBuilder`'s contentMode property
  open func contentMode(_ contentMode: UIView.ContentMode) -> UIViewBuilder {
    self.contentMode = contentMode
    return self
  }

  /// Set `UIViewBuilder`'s mask property
  open func mask(_ mask: UIView?) -> UIViewBuilder {
    self.mask = mask
    return self
  }

  /// Set `UIViewBuilder`'s tintColor property
  open func tintColor(_ tintColor: UIColor?) -> UIViewBuilder {
    self.tintColor = tintColor
    return self
  }

  /// Set `UIViewBuilder`'s tintAdjustmentMode property
  open func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> UIViewBuilder {
    self.tintAdjustmentMode = tintAdjustmentMode
    return self
  }

  /// Construct an `UIView` with the set properties.
  func build() -> UIView {
    let view = UIView()
    view.frame = self.frame
    view.tag = self.tag
    view.bounds = self.bounds
    view.center = self.center
    view.transform = self.transform
    view.contentScaleFactor = self.contentScaleFactor
    view.isUserInteractionEnabled = self.isUserInteractionEnabled
    view.isMultipleTouchEnabled = self.isMultipleTouchEnabled
    view.isExclusiveTouch = self.isExclusiveTouch
    view.autoresizingMask = self.autoresizingMask
    view.autoresizesSubviews = self.autoresizesSubviews
    view.layoutMargins = self.layoutMargins
    view.preservesSuperviewLayoutMargins = self.preservesSuperviewLayoutMargins
    view.clipsToBounds = self.clipsToBounds
    view.backgroundColor = self.backgroundColor
    view.alpha = self.alpha
    view.isOpaque = self.isOpaque
    view.clearsContextBeforeDrawing = self.clearsContextBeforeDrawing
    view.isHidden = self.isHidden
    view.contentMode = self.contentMode
    view.mask = self.mask
    view.tintColor = self.tintColor
    view.tintAdjustmentMode = self.tintAdjustmentMode
    return view
  }
}
