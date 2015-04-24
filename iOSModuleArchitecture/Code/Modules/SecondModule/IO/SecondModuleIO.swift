//
//  SecondModuleIO.swift
//
//  Created by Jean Lebrument on 04/23/15.
//

import UIKit
import Foundation

class SecondModuleIO
{
    var wireframe: SecondModuleWireframe?
    var presenter: SecondModulePresenter?
    
    init(){}
}

extension SecondModuleIO: ISecondModuleInput
{
    func launchModule(window: UIWindow)
    {
        wireframe?.presentInterfaceFromWindow(UIApplication.sharedApplication().windows[0] as! UIWindow)
        
        wireframe?.viewController?.eventHandler = presenter
        presenter?.userInterface = wireframe?.viewController
    }
}

extension SecondModuleIO: ISecondModuleOutput
{
}


