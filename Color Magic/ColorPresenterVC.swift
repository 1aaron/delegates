//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Developer on 2/27/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {
   
    @IBOutlet weak var colorNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPicker" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else {return}
            colorPickerVC.delegate = self
        }
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
}

