programa {

			
    inclua biblioteca Util --> u
      
        
        inteiro numero
        inteiro sorteio
        inteiro tentativas = 1
        cadeia novoJogo=""
        inteiro menuOpcao
        inteiro valorMaximo

        
        funcao menuJogo(){			//inicio da função menu//

        	escreva("Jogo de adivinhação!!!\n\n")
        	escreva("Escolha a Dificuldade do jogo:\n\n")
        	escreva("Digite 1 para jogar o modo fácil\n")
        	escreva("Digite 2 para jogar o modo difícil\n\n")
        	escreva("Resposta:")
        	leia(menuOpcao)
        	limpa()     
        } 	//final da função menu//


		funcao jogar(){			//inicio da função jogar
			se(menuOpcao==1){
        		escreva("Digite um numero entre 1 e 50 para tentar adivinhar!\n\n")
        		escreva("Resposta:")
        		leia(numero)
        		limpa()
			}
        		senao se(menuOpcao==2){
        		escreva("Digite um numero entre 1 e 100 para tentar adivinhar!\n\n")
        		escreva("Resposta:")
        		leia(numero)
        		limpa()
        		}
		}				//final da função jogar
		

	   
	   funcao reiniciar(){					//inicio da função reiniciar//
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
        } //final da função reiniciar//


          
	   funcao sortear(){ 		//inicio da função sortear//
        	se(menuOpcao==1) sorteio = u.sorteia(1, 50)
        		senao se(menuOpcao==2) sorteio = u.sorteia(1, 100) 

	   }		//final da função sortear// 



        funcao regras(){  	//inicio da função regras

        	se(menuOpcao==1){
        		valorMaximo=50}
        	senao se(menuOpcao==2){
        		valorMaximo=100	
        	}
        			             	
        	
        	enquanto(numero!=sorteio e tentativas<=9){ //inicio da condição enquanto

			se(numero>valorMaximo){
	       		escreva("O número digitado ultrapassa o limite do jogo\n")
	       		pare
			}
			
	          senao se(sorteio<numero){
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
	       		}

	        	
	        } 		//final da função regras
        
       
        

      funcao inicio() {
      	menuJogo()
      	sortear()
      	jogar()
      	regras()
      	
        
      }
}
      


  
  

	
