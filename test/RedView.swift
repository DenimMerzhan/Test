//
//  RedView.swift
//  test
//
//  Created by Деним Мержан on 03.10.23.
//

import Foundation
import UIKit

class RedView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }
    
    override func layoutSubviews() {
        print("layoutSubviews")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
