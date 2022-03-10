//
//  AppearanceManager.swift
//  
//
//  Created by Павел Кузин on 08/02/2022.
//

import UIKit

public class AppearanceManager {
    
    private init() { }
    
    static public var currentTheme : UIUserInterfaceStyle {
        return self.getCurrentTheme()
    }
    
    static public var currentLanguage : String {
        return self.getCurrentLanguage()
    }
    
    static private func getCurrentTheme() -> UIUserInterfaceStyle {
        return UIScreen.main.traitCollection.userInterfaceStyle
    }
    
    static private func getCurrentLanguage() -> String {
        return Localize.currentLanguage()
    }
}
