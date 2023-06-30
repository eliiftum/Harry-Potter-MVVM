//
//  String+Extension.swift
//  HarryPotterMVVM
//
//  Created by Elif Tum on 30.06.2023.
//

import Foundation

extension String?{
    var unwrapWithStringEmpty: String {
        guard let self = self else {return ""}
        return self
    }
}
