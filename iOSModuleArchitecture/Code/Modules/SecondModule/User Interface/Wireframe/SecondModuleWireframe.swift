//
//  SecondModuleWireframe.swift
//
//  Created by Jean Lebrument on 04/23/15.
//

import UIKit
import Foundation

class SecondModuleWireframe
{
    weak var viewController : SecondModuleViewController?

    let SecondModuleViewControllerIdentifier = "SecondModuleViewController"
    
    init(){}
    
    func presentInterfaceFromWindow(window: UIWindow)
    {
        let tmpViewController = SecondModuleViewControllerFromStoryboard()

        RootWireframe.showViewController(tmpViewController, inWindow: window)
        
        viewController = tmpViewController
    }
    
    func SecondModuleViewControllerFromStoryboard() -> SecondModuleViewController
    {
        let storyboard = mainStoryboard()
        let tmpViewController = storyboard.instantiateViewControllerWithIdentifier(SecondModuleViewControllerIdentifier) as! SecondModuleViewController
        
        return tmpViewController
    }
    
    func mainStoryboard() -> UIStoryboard
    {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        
        return storyboard
    }
}