//
//  ViewController.swift
//  sb_2_9
//
//  Created by Артем ШАЛИН on 07.02.2022.
//

import Spring

class MainViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var animatedView: SpringView!
    @IBOutlet var descriptionLabel: UILabel!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        nextAnimation()
    }
    
    // MARK: - IB Actions
    @IBAction func nextAnimationButton(_ sender: SpringButton) {
        
        sender.animation = "swing"
        sender.duration = 0.3
        sender.curve = "linear"
        sender.animate()
        
        nextAnimation()
        
    }
    
    // MARK: - Private Methods
    private func nextAnimation() {
        
        let animation = Animation.getRandomAnimation()
        
        descriptionLabel.text = animation.description
        
        animatedView.animation = animation.name
        animatedView.curve = animation.curve
        animatedView.duration = CGFloat(animation.duration)
        animatedView.delay = CGFloat(animation.delay)
        animatedView.repeatCount = animation.repeatCount
        animatedView.animate()
        
    }

}

