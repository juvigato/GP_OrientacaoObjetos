//
//  ViewController.swift
//  gpOrientacaoObjetos
//
//  Created by Juliana Vigato Pavan on 25/03/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        criarAluno()
    }
    
    func criarAluno() {
        
        var cursos: Cursos = Cursos.CC
        print(cursos.rawValue) //Não completava sozinho, mas existe! o/ \o

//        Aluno luizin = new Aluno() -> Java
        let luizin: Aluno = Aluno(nome: "Luizin", idade: 22, curso: Cursos.CC, faculdade: Faculdade.Mackenzie)

        let paulo: Aluno = Aluno(nome: "Paulo", idade: 310, curso: Cursos.CC, faculdade: Faculdade.Mackenzie)
        
        let nath: Aluno = Aluno(nome: "Nath", idade: 21, curso: Cursos.unknown, faculdade: Faculdade.Mackenzie)
        
        let Joca: Pessoa = Pessoa(nome: "Joca", idade: 25, horasSono: 2)
        
//        print(paulo.nome) --> LIXO, não consigo pq o nome é private
        print(paulo.getNome())
//        print(Aluno.get(paulo))  --> LIXO
        
        print("Curso da nath atual: \(nath.getCurso())")
//        nath.curso = Curso.CC --> LIXO, não dá pq o curso é private
        nath.setCurso(novoCurso: Cursos.CC)
        print("Curso da nath depois da mudança: \(nath.getCurso().rawValue)")
        
        nath.horasDeSono()
        Joca.horasDeSono()
        
        print(nath.doceFav) // Publico, consigo pegar sem get!
        nath.doceFav = "Chocolate"
    }
}
