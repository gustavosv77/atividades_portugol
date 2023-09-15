programa
{
	
inclua biblioteca Matematica-->mat
	
	
			inteiro peso
			real altura, result, arredonda		 
      logico reiniciar=verdadeiro

      funcao reiniciarImc(){
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
      funcao calculaImc(){
			escreva("Informe o seu peso e altura para calcular o IDM!\n")
			escreva("Digite o seu peso em Kg:\n")
			escreva("\nResposta:")
			leia(peso)
			limpa()
			escreva("Digite a sua altura em Metros ; ex: 1.80 se você tiver 1 metro e 80 cm:\n")
			escreva("\nResposta:")
			leia(altura)
			limpa()

			result= peso / (altura*altura)
		
			arredonda= mat.arredondar(result, 2)
		
			escreva("Seu indice de Massa Corporal é de: ",arredonda,"\n")

		
				se(result < 18.50){
					escreva("\nVocê está abaixo do peso ideal!\n")
		}
				senao se(result < 25){
					escreva("\nVocê está no peso ideal!\n")
		}
				senao se(result < 30){
					escreva("\nVocê está no quadro de sobrepeso!\n")
		}
				senao se(result >=30 ){
					escreva("\nVocê está no quadro de obesidade!\n")
		}
      }

		funcao inicio() {
      enquanto(reiniciar){
        calculaImc()
        reiniciarImc()
    }
		
		
		
	}
}
