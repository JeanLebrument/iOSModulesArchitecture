//
//  RootWireframe.m
//
//  Created by Jean Lebrument on 04/23/2015.
//

import UIKit

class RootWireframe
{
    class func showViewController(viewController: UIViewController, inWindow window: UIWindow)
    {
        navigationControllerFromWindow(window)?.pushViewController(viewController, animated: true)
    }
    
    class func navigationControllerFromWindow(window: UIWindow) -> UINavigationController?
    {
        return window.rootViewController as? UINavigationController
    }
}