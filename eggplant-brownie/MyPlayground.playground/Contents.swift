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
print(total)

let total2 = calculaCalorias(totalDeCalorias: [50.5, 100, 400])
print(total2)
