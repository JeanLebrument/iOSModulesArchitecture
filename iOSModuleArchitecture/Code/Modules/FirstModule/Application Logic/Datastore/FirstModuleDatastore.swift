//
//  FirstModuleDatastore.swift
//
//  Created by Jean Lebrument on 04/23/14.
//

import Foundation

class FirstModuleDatastore
{
    var localDatastore: IFirstModuleLocalDatastore?
    var remoteDatastore: IFirstModuleRemoteDatastore?
    
    init(){}
    
    func retrieveData(completion: FirstModuleModel? -> Void)
    {
        remoteDatastore?.retrieveData({ data in _ = ()
            (data != nil) ? completion(data) : self.localDatastore?.retrieveData(completion)
        })
    }
}