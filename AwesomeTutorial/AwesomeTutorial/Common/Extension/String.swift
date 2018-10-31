//
//  String.swift
//  AwesomeTutorial
//
//  Created by Moulinet Chloë on 30/10/2018.
//  Copyright © 2018 Moulinet Chloë. All rights reserved.
//

import Foundation

extension String {
    
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "\(self)", comment: "")
    }
    
}
