public struct Pessoa {
    let nome: String
    let email: String?
    let idade: Int

    public init(nome: String, email: String?, idade: Int) {
        self.nome = nome
        self.email = email
        self.idade = idade
    }
}


public func dobro(_ x: String) -> Int{
    if let num = Int(x) {
        return num * 2;
    } else {
        print("Erro: '\(x)' não é um número válido.");
    }
    return Int.max;
}


public func imprimirPessoa(_ pessoa: Pessoa) {
    print("Nome: \(pessoa.nome)")
    
    guard let email = pessoa.email else {
        print("Email não fornecido.")
        return
    }
    guard email.count > 0 else {
        print("Email vazio invalido")
        return
    }

    print("Email: \(email)")
    print("Idade: \(pessoa.idade)")
}


let notas = [
    "Ana": 9.5,
    "Bruno": 8.0,
]

public func notasAluno(_ nome: String) -> Double? {
    if let nota = notas[nome]{
        return nota
    }else {
        print("Aluno \(nome) não encontrado.")
        return nil
    }
}



public enum Forma {
    case circulo(Double) // raio
    case retangulo(Double, Double) // largura, altura
}

public func area(_ forma: Forma) -> Double {
    switch forma {
    case .circulo(let raio):
        return Double.pi * raio * raio
    case .retangulo(let largura, let altura):
        return largura * altura
    }
}