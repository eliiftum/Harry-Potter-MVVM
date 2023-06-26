//
//  UIImageView+Extension.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 26.06.2023.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView {
    func kfImage(url: String) {
        self.kf.indicatorType = .activity
        self.kf.setImage(with: URL(string: url)!)
    }
}
