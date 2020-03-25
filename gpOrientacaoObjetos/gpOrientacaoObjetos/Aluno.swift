//
//  Aluno.swift
//  gpOrientacaoObjetos
//
//  Created by Juliana Vigato Pavan on 25/03/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import Foundation
import UIKit

class Aluno : Pessoa {
    private var curso: Cursos
    private var faculdade: Faculdade
    public var doceFav:String = "Pudim"
    private var horasSono: Int = 3
    
    init(nome:String, idade: Int, curso:Cursos, faculdade: Faculdade) {
        self.curso = curso
        self.faculdade = faculdade
        super.init(nome: nome, idade: idade, horasSono: horasSono)
    }
    
    func getCurso() -> Cursos {
        return curso
    }
    
    func getFacul() -> Faculdade {
        return faculdade
    }
    
    func setCurso(novoCurso: Cursos) {
        self.curso = novoCurso
    }
    
    // Polimorfismo
    override func horasDeSono() {
        print("\(horasSono)h de sono zzz")
    }
}
