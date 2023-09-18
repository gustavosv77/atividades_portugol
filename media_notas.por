programa {
   
    real result
    real nota[4]
    logico reiniciar = verdadeiro

    funcao reiniciarMedia(){
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

    funcao calcularMedia(){
    escreva("Descubra se foi aprovado inserindo suas notas!\n")
    
    escreva("\nLembre que as notas vão de 0 a 10 \n\n")

    
		para(inteiro i = 0 ; i<=3 ; i++) {
        escreva ("\nDigite a nota ",i+1,": ")
        leia(nota[i])
        se(nota[i]>10){
          limpa()       
          inicio()
          
        }
        limpa()
		}   
       

        result= (nota[0] + nota[1] + nota[2] + nota[3]) / 4


        escreva("Sua média foi de: " , result, "\tpontos\n")


            se (result >= 6) {
                escreva("\nVocê foi aprovado :)")}
            
            senao se(result<6){
                escreva("\nVocê foi reprovado :(")
}
    }
     
     funcao inicio() {
      enquanto(reiniciar){
        calcularMedia()
        reiniciarMedia()
    }
     
  }
}
