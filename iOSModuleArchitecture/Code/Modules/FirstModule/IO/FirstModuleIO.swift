//
//  FirstModuleIO.swift
//
//  Created by Jean Lebrument on 04/23/15.
//

import UIKit
import Foundation

class FirstModuleIO
{
    var wireframe: FirstModuleWireframe?
    var presenter: FirstModulePresenter?
    
    init(){}
}

extension FirstModuleIO: IFirstModuleInput
{
    func launchModule(window: UIWindow)
    {
        wireframe?.presentInterfaceFromWindow(UIApplication.sharedApplication().windows[0] as! UIWindow)
        
        wireframe?.viewController?.eventHandler = presenter
        presenter?.userInterface = wireframe?.viewController
    }
}

extension FirstModuleIO: IFirstModuleOutput
{
    func goToOutputModule(data: FirstModuleModel)
    {
        if let str = data.str
        {
            UIApplication.sharedApplication().openURL(NSURL(string: "myself://secondModule?value=\(str)")!)
        }
    }
}


