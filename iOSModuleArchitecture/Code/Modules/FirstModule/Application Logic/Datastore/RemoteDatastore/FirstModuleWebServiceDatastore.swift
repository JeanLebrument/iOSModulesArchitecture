//
//  FirstModuleWebServiceDatastore.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import Foundation

class FirstModuleWebServiceDatastore: IFirstModuleRemoteDatastore
{
    init(){}

    func retrieveData(completion: FirstModuleModel? -> Void)
    {
        completion(nil)
    }
}
