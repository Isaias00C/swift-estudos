// The Swift Programming Language
// https://docs.swift.org/swift-book

import functions

@main
struct swift_estudos {
    static func main() {
        let option1 = options(option: 1)
        print(option1)

        let option2 = options(option: 2)
        print(option2)

        let option3 = options(option: 3)
        print(option3)

        let option4 = options(option: 4)
        print(option4)

        let pessoa1 = Pessoa(nome: "João", email: "", idade: 30)
        imprimirPessoa(pessoa1)

        let pessoa2 = Pessoa(nome: "Maria", email: nil, idade: 25)
        imprimirPessoa(pessoa2)

        let notaAna = notasAluno("Ana")
        if let nota = notaAna {
            print("Nota da Ana: \(nota)")
        }
        let notaBia = notasAluno("Bia")
        if let nota: Double = notaBia {
            print("Nota da Bia: \(nota)")
        }

        let forma1 = Forma.circulo(5.0)
        let forma2 = Forma.retangulo(4.0, 6.0)
        print("Área da forma 1: \(area(forma1))")
        print("Área da forma 2: \(area(forma2))")
    }
}
