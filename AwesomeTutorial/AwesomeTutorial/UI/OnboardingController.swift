//
//  OnboardingController.swift
//  AwesomeTutorial
//
//  Created by Moulinet Chloë on 30/10/2018.
//  Copyright © 2018 Moulinet Chloë. All rights reserved.
//

import UIKit

class OnboardingController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        
        let firstView = TutorialView(type: .welcome)
        let secondView = TutorialView(type: .map)
        let thirdView = TutorialView(type: .reward)

        let viewArray = [firstView, secondView, thirdView]
        
        // Set frame size to each tutorialView 
        viewArray.forEach { tutorialView in
            tutorialView.frame = view.frame
        }
        
        let tutorialSlideContainer = Hola(frame: view.frame, viewArray: viewArray, .horizontal)
        view.addSubview(tutorialSlideContainer)
    }

}

