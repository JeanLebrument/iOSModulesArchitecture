//
//  FirstModuleBuilder.swift
//
//  Created by Jean Lebrument on 04/23/15
//

class FirstModuleBuilder: IFirstModuleBuilder
{
    func createFirstModule() -> FirstModuleIO?
    {
        let wireframe = FirstModuleWireframe()
        let presenter = FirstModulePresenter()
        let interactor = FirstModuleInteractor()
        let datastore = FirstModuleDatastore()
        let io = FirstModuleIO()
        
        presenter.output = io
        presenter.interactor = interactor
        interactor.datastore = datastore
        interactor.output = presenter
        datastore.localDatastore = FirstModuleLocalStorageDatastore()
        datastore.remoteDatastore = FirstModuleWebServiceDatastore()
        
        io.presenter = presenter
        io.wireframe = wireframe
        
        return io
    }
}