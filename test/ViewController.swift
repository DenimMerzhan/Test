//
//  ContorllerViewController.swift
//  test
//
//  Created by Деним Мержан on 22.09.23.
//

import UIKit
import Vision
import SnapKit

class ViewController: UIViewController {
    
    lazy var redView = RedView(frame: .zero)
    var heightRedView: Constraint?
    
    private lazy var label: UILabel = {
        let label = UILabel(frame: .zero)
        label.numberOfLines = 0
        label.text = "bla ala aladl lad lald lda lda lad lda l"
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .blue
        let action = UIAction { action in
            self.view.layoutIfNeeded()
            UIView.animate(withDuration: 2) {
                self.heightRedView?.update(offset: 390)
                self.redView.layer.cornerRadius = self.redView.frame.width / 2
                self.view.layoutIfNeeded()
            }
        }
        button.addAction(action, for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(button)
        self.view.addSubview(redView)
        
        self.view.backgroundColor = .white
        
        setupConstrains()
        
    }
    
    func setupConstrains(){
        
        button.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self.view)
            make.height.equalTo(100)
            make.width.equalTo(100)
        }
    
        redView.snp.makeConstraints { make in
            make.left.right.equalTo(self.view)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            heightRedView =  make.height.equalTo(100).constraint

        }
    }
    
}


