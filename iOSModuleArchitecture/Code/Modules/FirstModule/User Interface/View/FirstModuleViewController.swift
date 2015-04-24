//
//  FirstModuleViewController.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import UIKit
import Foundation

class FirstModuleViewController: UIViewController
{
    var eventHandler: FirstModulePresenter?
    var data: FirstModuleModel?
        
    @IBOutlet weak var dataValueField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        eventHandler?.updateView()
    }
    
    @IBAction func clickButton(sender: AnyObject)
    {
        eventHandler?.goToSecondModule(data)
    }
}

extension FirstModuleViewController : IFirstModuleView
{
    func showData(tmpData: FirstModuleModel?)
    {
        data = tmpData
        dataValueField.text = data?.str
    }
}