//
//  MudSpringLabel.swift
//  Travel
//
//  Created by TimTiger on 10/28/15.
//  Copyright © 2015 Mudmen. All rights reserved.
//

import UIKit

public class MudSpringLabel: UILabel ,Springable {
    @IBInspectable public var autostart: Bool = false
    @IBInspectable public var autohide: Bool = false
    @IBInspectable public var animation: String = ""
    @IBInspectable public var force: CGFloat = 1
    @IBInspectable public var delay: CGFloat = 0
    @IBInspectable public var duration: CGFloat = 0.7
    @IBInspectable public var damping: CGFloat = 0.7
    @IBInspectable public var velocity: CGFloat = 0.7
    @IBInspectable public var repeatCount: Float = 1
    @IBInspectable public var x: CGFloat = 0
    @IBInspectable public var y: CGFloat = 0
    @IBInspectable public var scaleX: CGFloat = 1
    @IBInspectable public var scaleY: CGFloat = 1
    @IBInspectable public var rotate: CGFloat = 0
    @IBInspectable public var curve: String = ""
    public var opacity: CGFloat = 1
    public var animateFrom: Bool = false
    
    lazy private var spring : Spring = Spring(self)
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.spring.customAwakeFromNib()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        spring.customLayoutSubviews()
    }
    
    public func animate() {
        self.spring.animate()
    }
    
    public func animateNext(completion: () -> ()) {
        self.spring.animateNext(completion)
    }
    
    public func animateTo() {
        self.spring.animateTo()
    }
    
    public func animateToNext(completion: () -> ()) {
        self.spring.animateToNext(completion)
    }

}
