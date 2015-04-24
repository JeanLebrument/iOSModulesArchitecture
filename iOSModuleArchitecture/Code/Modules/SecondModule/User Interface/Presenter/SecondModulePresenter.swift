//
//  SecondModulePresenter.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import Foundation

class SecondModulePresenter
{
    var value: String?
    
    weak var userInterface : ISecondModuleView?
    var output : ISecondModuleOutput?
    
    init(){}
    
    func updateView()
    {
        userInterface?.showValue(value)
    }
}
