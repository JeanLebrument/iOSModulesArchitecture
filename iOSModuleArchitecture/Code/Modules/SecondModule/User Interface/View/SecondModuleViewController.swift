//
//  SecondModuleViewController.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import UIKit
import Foundation

class SecondModuleViewController: UIViewController
{
    var eventHandler: SecondModulePresenter?
    
    @IBOutlet weak var valueTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        eventHandler?.updateView()
    }
}

extension SecondModuleViewController : ISecondModuleView
{
    func showValue(value: String?)
    {
        if let sValue = value
        {
            valueTextField.text = valueTextField.text + sValue
        }
    }
}