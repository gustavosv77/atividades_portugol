programa {
  funcao inicio() {
    
    real result
    real nota1, nota2, nota3, nota4, nota5

    escreva("Descubra se foi aprovado inserindo suas notas\n")
    
    escreva("\nLembre que as notas vão de 0 a 20 \n")

    

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


        result= (nota1 + nota2 + nota3 + nota4 + nota5) 


        escreva("Sua média foi de:" , result, "\tpontos\n")


            se (result >= 60) {
                escreva("\nVocê foi aprovado")
            
            senao se(result<60)
                escreva("\nVocê foi reprovado")
}

  }
}
