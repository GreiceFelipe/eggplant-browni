import UIKit

// let cria constante e var cria variáves

let nome = "churros"
let felicidade: Int = 5
let calorias: Double = 79.5
let vegetal: Bool = false

// Precisamos colocar os nomes das variáveis com o valor
func alimentoConsumido(nome: String, calorias: Double){
    print("O alimento consimido foi: \(nome), com calorias: \(calorias)")
}
//alimentoConsumido(nome: nome, calorias: calorias)

// Podemos colocar apenas os valores
//func alimentoConsumido(_ nome: String, _ calorias: Double){
//    print("O alimento consimido foi: \(nome), com calorias: \(calorias)")
//}
//alimentoConsumido(nome, calorias)


// Array e laço
let totalDeCalorias = [50.5, 100, 300, 500, 450]

// vai faltar o ultimo elemeto visto que o 3 é um número fixo!
//for i in 0...3 {
//    print(i)
//    print(totalDeCalorias[i])
//}

// Imprime todos os elemntos mesmo se adicionar mais elementos mas não muito elegante
//for i in 0...totalDeCalorias.count-1 {
//    print(i)
//    print(totalDeCalorias[i])
//}

// Não tem um indice mas fica mais elegante e imprime todos mesmo se adicionar mais elementos
//for caloria in totalDeCalorias {
//    print(caloria)
//}

func calculaCalorias(totalDeCalorias: [Double]) -> Double {
    // se colocar apenas 0 swift entenderá que é um inteiro
    // Ou declara explicito ou coloca 0.0 no valor
    var total: Double = 0
    for cal in totalDeCalorias {
        total += cal
    }
    return total
}

let total = calculaCalorias(totalDeCalorias: totalDeCalorias)
//print(total)

let total2 = calculaCalorias(totalDeCalorias: [50.5, 100, 400])
//print(total2)

// Classes

// Atributos opcionais
//class Refeicao {
//    var nome: String?
//    var felicidade: String?
//}

//let refeicao = Refeicao()
//refeicao.nome = "Macarrao"

//print(refeicao.nome)
// imprime => Optional("Macarrao")

//Forced Unwrap => quando colocamos um ponto de exclamação estamos forçando a extração do valor desta variável
// Se a variavel for nula haverá erro! ( má pratica)
//print(refeicao.nome!)
// imprime => Macarrao

// Maneira com if pouco usada
//if refeicao.nome != nil {
//    print(refeicao.nome!)
//}

// Boas praticas para extrair valor da variavel

// o nome só vai existir dentro do if (dentro do escopo)
//if let nome = refeicao.nome {
//    print(nome)
//}

// guard let
// Deve está dentro de uma funcao
// nome vai existir fora do guard em toda a funcao
//func exibeNomeDaRefeicao() {
//    guard let nome = refeicao.nome else {
//        return
//    }
    
//    print(nome)
//}

//exibeNomeDaRefeicao()

// é opcional pois podemos colocar uma string que não converte em um int
//let numero = Int("5")

//if let n = numero {
//    print(n)
//} else {
//    print("Erro ao converter String para Int")
//}


class Refeicao {
    
    // MARK: - Atributos
    var nome: String
    var felicidade: String
    
    // MARK: - Construtor
    
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
}

let refeicao = Refeicao(nome: "Macarrao", felicidade: "5")
let refeicao2 = Refeicao(nome: "Feijao", felicidade: "3")

print(refeicao.nome)
print(refeicao.felicidade)

print(refeicao2.nome)
print(refeicao2.felicidade)
