programa {
  inteiro opcao 
  real fator1 
  real fator2 
  real result 
  logico reiniciar = verdadeiro 
  cadeia respostaReinicio

  
	funcao reinicio(){
  	escreva("\n\nPara calcular novamente digite 'S' ou qualquer letra para finalizar\n")
     escreva("Resposta:\t")
     leia(respostaReinicio)
     limpa()

    se (respostaReinicio == "s" ou respostaReinicio == "S"){
      reiniciar = verdadeiro
    }
    senao{
      reiniciar = falso
    }
	}


  funcao fatores(){
  	escreva("Calculadora Simples!\n")
  	escreva("\nDigite o primeiro fator:\n\n")
    	escreva("Resposta: ")
    	leia(fator1)
    	limpa()
    	escreva("\nDigite o segundo fator:\n\n")
    	escreva("Resposta: ")
    	leia(fator2)
  }

  funcao calcular(){
    limpa()  
    escreva("\nEscolha uma operação:\n")
    escreva("1 - ADIÇÃO\t\t 2 - SUBTRAÇÃO\n")
    escreva("3 - MULTIPLICAÇÃO\t 4 - DIVISÃO\n\n") 
    escreva("Resposta: ")
    leia(opcao)
    limpa()



    se (opcao == 1) {	 
      result = fator1 + fator2
      escreva("\nO resultado da Adição é: ", result, "\n")
    }

    se (opcao == 2) {  	    
      result = fator1 - fator2
      escreva("\nO resultado da Subtração é: ", result, "\n")
    }
  
    se (opcao == 3) { 	
      result = fator1 * fator2
      escreva("\nO resultado da Multiplicação é: ", result, "\n")
    }
    se (opcao == 4) {   	 
      result = fator1 / fator2
      escreva("\nO resultado da Divisão é: ", result, "\n")
    }

  }

  funcao inicio() {
    enquanto (reiniciar) {
    	 fatores()
      calcular()
      reinicio()
    }
  }
}
