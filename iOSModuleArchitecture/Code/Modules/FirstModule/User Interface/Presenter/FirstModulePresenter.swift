//
//  FirstModulePresenter.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import Foundation

class FirstModulePresenter
{
    var interactor : IFirstModuleInteractorInput?
    weak var userInterface : IFirstModuleView?
    var output : IFirstModuleOutput?
    
    init(){}
}

extension FirstModulePresenter
{
    func updateView()
    {
        interactor?.findData()
    }
    
    func goToSecondModule(data: FirstModuleModel?)
    {
        if let sData = data
        {
            output?.goToOutputModule(sData)
        }
    }
}

extension FirstModulePresenter : IFirstModuleInteractorOutput
{
    func foundData(data : FirstModuleModel?)
    {
        userInterface?.showData(data)
    }
}