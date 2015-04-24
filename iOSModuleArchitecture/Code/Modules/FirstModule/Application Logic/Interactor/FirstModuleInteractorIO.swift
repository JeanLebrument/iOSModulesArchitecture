//
//  FirstModuleInteractorIO.swift
//
//  Created by Jean Lebrument on 04/23/15.
//

protocol IFirstModuleInteractorInput : class
{
    func findData()
}

protocol IFirstModuleInteractorOutput: class
{
    func foundData(data : FirstModuleModel?)
}