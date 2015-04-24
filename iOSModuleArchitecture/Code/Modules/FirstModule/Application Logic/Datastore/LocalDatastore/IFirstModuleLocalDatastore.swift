//
//  IFirstModuleLocalDataStore.swift
//  ModuleArchitecture
//
//  Created by Jean Lebrument on 4/23/15.
//  Copyright (c) 2015 Jean Lebrument. All rights reserved.
//

import Foundation

protocol IFirstModuleLocalDatastore
{
    func retrieveData(completion: FirstModuleModel? -> Void)
}