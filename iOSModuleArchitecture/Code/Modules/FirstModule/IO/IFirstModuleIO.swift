//
//  IFirstModuleIO.swift
//
//  Created by Jean Lebrument on 04/23/15.
//

import UIKit
import Foundation

protocol IFirstModuleInput: class
{
    func launchModule(window: UIWindow)
}

protocol IFirstModuleOutput: class
{
    func goToOutputModule(data: FirstModuleModel)
}