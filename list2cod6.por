//Um posto está vendendo combustíveis com a seguinte tabela de descontos:
//Etanol até 20 litros, desconto de 3% por litro
//acima de 20 litros, desconto de 5% por litro
//Gasolina até 20 litros, desconto de 4% por litro
//acima de 20 litros, desconto de 6% por litro

//Escreva um programa que leia o número de litros vendidos e o tipo de combustível
//(codificado da seguinte forma: E-etanol, G-gasolina), calcule e imprima o valor a ser pago
//pelo cliente sabendo-se que o preço do litro da gasolina é R$ 4,02 e o preço do litro do
//etanol é R$ 3,24.
programa
{
inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
	real qtdlitros, valorfinal,gasolina,etanol,qtdlitrosinteiro,valorfinalfinal
	cadeia typecombusti

	escreva("Digite o tipo de combustível: (E-tanol ou Gasolina) ")
	leia(typecombusti)
	escreva("Digite a quantidade em litros de ", typecombusti, ": ")
	leia(qtdlitros)
	
	
	gasolina = 4.02
	etanol = 3.24	

	se(typecombusti == "E-tanol" e qtdlitros <= 20){
		qtdlitrosinteiro = mat.arredondar(qtdlitros, 0)
		valorfinal = (etanol * qtdlitros) - (qtdlitrosinteiro * (qtdlitros * 3/100))
		valorfinalfinal = mat.arredondar(valorfinal,2)
		escreva("O valor total a ser pago é: R$", valorfinalfinal)
	}senao se(typecombusti == "E-tanol" e qtdlitros > 20){
		qtdlitrosinteiro = mat.arredondar(qtdlitros, 0)
		valorfinal = (etanol * qtdlitros) - (qtdlitrosinteiro * (qtdlitros * 5/100))
		valorfinalfinal = mat.arredondar(valorfinal,2)
		escreva("O valor total a ser pago é: R$", valorfinalfinal)
	}senao se(typecombusti == "Gasolina" e qtdlitros <= 20){
		qtdlitrosinteiro = mat.arredondar(qtdlitros, 0)
		valorfinal = (gasolina * qtdlitros) - (qtdlitrosinteiro * (qtdlitros * 4/100))
		valorfinalfinal = mat.arredondar(valorfinal,2)
		escreva("O valor total a ser pago é: R$", valorfinalfinal)
	}senao se(typecombusti == "Gasolina" e qtdlitros > 20){
		qtdlitrosinteiro = mat.arredondar(qtdlitros, 0)
		valorfinal = (gasolina * qtdlitros) - (qtdlitrosinteiro * (qtdlitros * 6/100))
		valorfinalfinal = mat.arredondar(valorfinal,2)
		escreva("O valor total a ser pago é: R$", valorfinalfinal)
	}senao{
		escreva("Error")
	}

	}
}
