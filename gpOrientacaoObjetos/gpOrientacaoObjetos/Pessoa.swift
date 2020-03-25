//
//  Pessoa.swift
//  gpOrientacaoObjetos
//
//  Created by Juliana Vigato Pavan on 25/03/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import Foundation

class Pessoa {
    private var nome: String
    private var idade: Int
    private var horasSono: Int
    
    init(nome:String, idade:Int, horasSono:Int) {
        self.nome = nome
        self.idade = idade
        self.horasSono = horasSono
    }
    
    func getNome() -> String {
        return nome
    }
    
    func getIdade() -> Int {
        return idade
    }
    
    func horasDeSono() {
        print("\(horasSono)h de sono yay")
    }
}
