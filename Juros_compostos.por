programa 
{   inclua biblioteca Matematica-->mat
  	

  
  funcao inicio() {
    
    	real taxa , porcentagem , tempo , montante , capital , juros , base , resultado
	    real arredonda , arredonda2


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

		base= 1+taxa

		resultado= mat.potencia(base, tempo)

    montante=  capital * resultado 

		arredonda= mat.arredondar(montante, 2)
		
        escreva("O montante é de: ",arredonda," R$\n" )

    juros= montante - capital

		arredonda2= mat.arredondar(juros, 2)

        escreva("\nO total de juros foi de: ",arredonda2," R$")




  }
}

