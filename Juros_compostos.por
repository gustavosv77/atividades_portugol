programa {
  

  
  funcao inicio() {
    
    real taxa , porcentagem , tempo , montante , capital , juros



      escreva("Calculadora de Juros Compostos\n")
      escreva("\nDigite o valor do Capital:\n")
      leia(capital)
      limpa()
      escreva("Digite o valor da taxa ao ano em porcentagem:\n")
      leia(porcentagem)
      limpa()
      escreva("Digite o tempo em anos: ; ex: se for 24 meses informe 2 anos\n")
      leia(tempo)
      limpa()

       
          
          taxa= porcentagem / 100

          montante=  capital * (1+taxa)  tempo

      escreva("O montante é de:\t" , montante, "\treais" )

          juros= montante - capital

      escreva("\nO total de juros foi de:\t" , juros , "\treais")




  }
}
