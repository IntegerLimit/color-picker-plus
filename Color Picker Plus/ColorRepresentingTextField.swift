//
//  ColorRepresentingTextField.swift
//  Color Picker Plus
//
//  Created by Viktor Hundahl Strate on 27/06/2018.
//  Copyright © 2018 Viktor Hundahl Strate. All rights reserved.
//

import Cocoa

class ColorRepresentingTextField: NSTextField, NSTextFieldDelegate {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
    }
    
    override func controlTextDidChange(_ obj: Notification) {
        Logger.debug(message: "Text field changed")
        
        ColorPickerPlus.shared.colorFieldChanged(self)
    }

}
