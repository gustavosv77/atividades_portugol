programa {

			
    inclua biblioteca Util --> u
      
        
        inteiro numero
        inteiro sorteio
        inteiro tentativas = 1
        cadeia novoJogo=""

        
        funcao sortear(){ 		//inicio da função sortear
        	sorteio = u.sorteia(1, 100)

        	escreva("Jogo de adivinhação!\n\n")
        	escreva("Digite um numero entre 1 e 100 para tentar adivinhar\n\n")
        	escreva("Resposta:")
        	leia(numero)
        	limpa()
        } 	//final da função sortear


	   
	   funcao reiniciar(){					//inicio da função reiniciar
		escreva("\nDeseja jogar novamente?\n\n")
		escreva("Digite 'S' para sim ou qualquer tecla para sair:\n\n")        	
         	leia(novoJogo)
          limpa()
          	se(novoJogo=="S" ou novoJogo=="s" ou novoJogo=="Sim" ou novoJogo=="sim"){
          	limpa()   
          	tentativas=1    	    	
          	inicio()         	
          	}senao{
          	}
        } //final da função reiniciar
          
	   


        funcao jogar(){        //inicio da função jogar
        	
        	enquanto(numero!=sorteio e tentativas<=9){ //inicio da condição enquanto


	          se(sorteio<numero){
	            escreva("O numero digitado é maior que o Sorteado\n\n")
	            escreva("Tente novamente!\n\n")
	            escreva("Resposta:")
	            tentativas++           
	            leia(numero)
	            limpa()
	          		}
	            
	          senao se(sorteio>numero){
	            escreva("O numero digitado é menor que o Sorteado\n\n")
	            escreva("Tente novamente!\n\n")
	            tentativas++
	            escreva("Resposta:")           
	            leia(numero)
	            limpa()
	          		} 
	          escreva("Tentativa numero ",tentativas,"\n\n") // mostra quantas tentativas já foram
	          } //termina a condição do enquanto		
			
			se(numero==sorteio){
	           	limpa()
	           	escreva("Parabéns você acertou!!!\n\n") 
	           	reiniciar()         	
	           	}
	
	        	
	        	se(tentativas>9){
	        		limpa()
	        		escreva("Game Over!! O número sorteado era ",sorteio,"\n\n")				
	        		reiniciar()   	
	
	       	se(numero>100){
	       		escreva("O número digitado ultrapassa o limite do jogo")
	       	}
	       		
	        		
	        		
	        	}
	        } //final da função jogar
        
       
        

      funcao inicio() {
      	sortear()
      	jogar()
      	
        
      }
}
      


  
  

	
