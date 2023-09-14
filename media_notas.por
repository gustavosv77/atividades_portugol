programa {
  
    
    real result
    real nota1, nota2, nota3, nota4, nota5
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
    escreva("Descubra se foi aprovado inserindo suas notas\n")
    
    escreva("\nLembre que as notas vão de 0 a 10 \n")

    

        escreva ("\nDigite a primeira nota:")
        leia(nota1)
        limpa()
                
           
        escreva ("Digite a segunda nota:")
        leia(nota2)
        limpa() 
            
     
        escreva ("Digite a terceira nota:")
        leia(nota3)
        limpa()
            

        escreva ("Digite a quarta nota:")
        leia(nota4)
        limpa()

      
        escreva ("Digite a quinta nota:")
        leia(nota5)
        limpa()


        result= (nota1 + nota2 + nota3 + nota4 + nota5) / 5


        escreva("Sua média foi de:" , result, "\tpontos\n")


            se (result >= 6) {
                escreva("\nVocê foi aprovado")}
            
            senao se(result<6){
                escreva("\nVocê foi reprovado")
}
    }
     
     funcao inicio() {
      enquanto(reiniciar){
        calcularMedia()
        reiniciarMedia()
    }
     
  }
}
