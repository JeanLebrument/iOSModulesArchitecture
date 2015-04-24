//
//  SecondModuleBuilder.swift
//
//  Created by Jean Lebrument on 04/23/15
//

class SecondModuleBuilder: ISecondModuleBuilder
{
    func createSecondModule(value: String) -> SecondModuleIO?
    {
        let wireframe = SecondModuleWireframe()
        let presenter = SecondModulePresenter()
        let io = SecondModuleIO()
        
        presenter.output = io
        presenter.value = value
        
        io.presenter = presenter
        io.wireframe = wireframe
        
        return io
    }
}