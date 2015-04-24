//
//  FirstModuleInteractor.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import Foundation

class FirstModuleInteractor : IFirstModuleInteractorInput
{
    weak var output : IFirstModuleInteractorOutput?
    var datastore : FirstModuleDatastore?
    
    func findData()
    {
        datastore?.retrieveData({ [unowned self] data in
            self.output?.foundData(data)
        })
    }
}