//
//  FirstModuleLocalStorageDatastore.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import Foundation

class FirstModuleLocalStorageDatastore: IFirstModuleLocalDatastore
{
    init(){}

    func retrieveData(completion: FirstModuleModel? -> Void)
    {
        let data = FirstModuleModel()

        data.str = "A"

        completion(data)
    }
}