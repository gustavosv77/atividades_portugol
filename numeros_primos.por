programa
{
	
	
		inteiro x , divisores=0
		inteiro valor=1
		logico reiniciar = verdadeiro


    funcao reiniciarVerif(){
    cadeia respostaReiniciar

    escreva("\n\nPara calcular novamente digite 's' ou 'sim' ou qualquer letra para finalizar\n")
    escreva("Resposta:\t")
    leia(respostaReiniciar)
    limpa()

    se (respostaReiniciar == "s" ou respostaReiniciar == "S" ou respostaReiniciar == "sim" ou respostaReiniciar == "Sim" ou respostaReiniciar == "SIM"){
      reiniciar = verdadeiro
    }
    senao{
      reiniciar = falso
    }
  }

    funcao valorPrimo(){
			escreva("Digite um valor maior que 0 para saber se ele é um número primo!\n")
			escreva("Digite o valor:\n")
	
		leia(x)
			limpa()

		
		se(x > 0){
			enquanto(valor <=x){
				se(x % valor == 0){
					divisores++
							}
				valor++
				}
			
			se(divisores == 2){
			escreva("O número ", x , " é primo!\n")
			}
			senao{
			escreva("O número ", x , " não é primo!\n")
			}

				}
			
		senao{
			escreva("O valor é negativo ou igual a zero!\n")
		}
    }

    funcao inicio() {
    enquanto(reiniciar){
      valorPrimo()
      reiniciarVerif()
    }


	}
}
