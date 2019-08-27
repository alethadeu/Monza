//
//  TextField.swift
//  Monza
//
//  Created by Alexandre Thadeu on 26/08/19.
//  Copyright © 2019 iCarros Ltda. All rights reserved.
//

import UIKit

@IBDesignable
open class TextField: TextFieldEffects {
    
    /**
     The color of the placeholder text.
     This property applies a color to the complete placeholder string. The default value for this property is a black color.
     */
    @IBInspectable dynamic open var error: Bool = false {
        didSet {
            updateComponents()
        }
    }
    
    override open var placeholder: String? {
        didSet {
            updatePlaceholder()
        }
    }
    
    override open var bounds: CGRect {
        didSet {
            updateBorder()
            updatePlaceholder()
        }
    }
    
    private let placeholderInsets = CGPoint(x: 8, y: 0)
    private var activePlaceholderPoint: CGPoint = CGPoint.zero
    
    // MARK: - TextFieldEffects
    
    override open func drawViewsForRect(_ rect: CGRect) {
        let frame = CGRect(origin: CGPoint.zero, size: CGSize(width: rect.size.width, height: rect.size.height))
        placeholderLabel.frame = frame.insetBy(dx: placeholderInsets.x, dy: placeholderInsets.y)
        updateBorder()
        updatePlaceholder()
        addSubview(placeholderLabel)
    }
    
    override open func animateViewsForTextEntry() {
        if text!.isEmpty {
            UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1.0, options: .beginFromCurrentState, animations: ({
                self.placeholderLabel.frame.origin = CGPoint(x: 8, y: self.placeholderLabel.frame.origin.y)
                self.placeholderLabel.alpha = 0
            }), completion: { _ in
                self.animationCompletionHandler?(.textEntry)
            })
        }
        
        layoutPlaceholderInTextRect()
        placeholderLabel.frame.origin = activePlaceholderPoint
        
        UIView.animate(withDuration: 0.4, animations: {
            self.placeholderLabel.alpha = 1.0
        })
        
        
    }
    
    override open func animateViewsForTextDisplay() {
        if text!.isEmpty {
            UIView.animate(withDuration: 0.35, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 2.0, options: .beginFromCurrentState, animations: ({
                self.layoutPlaceholderInTextRect()
                self.placeholderLabel.alpha = 1
            }), completion: { _ in
                self.animationCompletionHandler?(.textDisplay)
            })
        }
    }
    
    private func layoutPlaceholderInTextRect() {
        let textRect = self.textRect(forBounds: bounds)
        var originX = textRect.origin.x
        switch self.textAlignment {
        case .center:
            originX += textRect.size.width/2 - placeholderLabel.bounds.width/2
        case .right:
            originX += textRect.size.width - placeholderLabel.bounds.width
        default:
            break
        }
        placeholderLabel.frame = CGRect(x: originX, y: textRect.height/2,
                                        width: placeholderLabel.bounds.width, height: placeholderLabel.bounds.height)
        activePlaceholderPoint = CGPoint(x: placeholderLabel.frame.origin.x, y: placeholderLabel.frame.origin.y - placeholderLabel.frame.size.height - placeholderInsets.y)
        
    }
    
    
    // MARK: - Private
    
    private func updateBorder() {
        self.layer.borderWidth = 1
        self.layer.borderColor = !error ? UIColor.black.cgColor : UIColor.red.cgColor
        self.layer.cornerRadius = 4
    }
    
    private func updatePlaceholder() {
        placeholderLabel.text = placeholder
        placeholderLabel.textColor = !error ? UIColor.Monza.Primary.blueOne: UIColor.red
        placeholderLabel.font =  UIFont.HelveticaNeue(.bold, size: 11)
        placeholderLabel.sizeToFit()
        
        layoutPlaceholderInTextRect()
        
        if isFirstResponder || text!.isNotEmpty {
            animateViewsForTextEntry()
        }
    }
    
    public func updateComponents() {
        updateBorder()
        updatePlaceholder()
    }
    
    // MARK: - Overrides
    
    let padding = UIEdgeInsets(top: 10, left: 8, bottom: 0, right: 8)
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
}
