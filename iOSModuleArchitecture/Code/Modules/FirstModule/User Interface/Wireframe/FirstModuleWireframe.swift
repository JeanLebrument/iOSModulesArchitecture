//
//  FirstModuleWireframe.swift
//
//  Created by Jean Lebrument on 04/23/15.
//

import UIKit
import Foundation

class FirstModuleWireframe
{
    weak var viewController : FirstModuleViewController?

    let FirstModuleViewControllerIdentifier = "FirstModuleViewController"
    
    init(){}
    
    func presentInterfaceFromWindow(window: UIWindow)
    {
        let tmpViewController = FirstModuleViewControllerromStoryboard()

        RootWireframe.showViewController(tmpViewController, inWindow: window)
        
        viewController = tmpViewController
    }
    
    func FirstModuleViewControllerromStoryboard() -> FirstModuleViewController
    {
        let storyboard = mainStoryboard()
        let tmpViewController = storyboard.instantiateViewControllerWithIdentifier(FirstModuleViewControllerIdentifier) as! FirstModuleViewController
        
        return tmpViewController
    }
    
    func mainStoryboard() -> UIStoryboard
    {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        
        return storyboard
    }
}