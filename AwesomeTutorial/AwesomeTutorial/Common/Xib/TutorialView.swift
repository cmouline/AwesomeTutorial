//
//  TutorialView.swift
//  AwesomeTutorial
//
//  Created by Moulinet Chloë on 30/10/2018.
//  Copyright © 2018 Moulinet Chloë. All rights reserved.
//

import UIKit
import Lottie

enum TutorialPage: String {
    
    case welcome
    case map
    case reward

    var title: String {
        return "tutorial_title_\(self.rawValue)".localized()
    }
    
    var description: String {
        return "tutorial_description_\(self.rawValue)".localized()
    }
    
    var animation: String {
        return "tutorial_animation_\(self.rawValue)"
    }
}

class TutorialView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var animationView: LOTAnimationView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    convenience init(type: TutorialPage) {
        self.init()
        setTutorialView(type: type)
    }
    
    private func setup() {
        Bundle.main.loadNibNamed("TutorialView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    func setTutorialView(type: TutorialPage) {
        titleLabel.text = type.title
        descriptionLabel.text = type.description
        animationView.setAnimation(named: type.animation)
        animationView.play()
        animationView.loopAnimation = true
    }
}
