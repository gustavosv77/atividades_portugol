programa {

			
    inclua biblioteca Util --> u
      
        
        inteiro numero, sorteio, tentativas = 1, menuOpcao, valorMaximo, chances
        cadeia novoJogo=""

        
        					 
        funcao menuJogo(){	//função de menu do jogo		

        	escreva("Jogo de adivinhação!!!\n\n")
        	escreva("Escolha a Dificuldade do jogo:\n\n")
        	escreva("1- Nível FÁCIL: 50 números e 10 tentativas\n")
        	escreva("2- Nível MÉDIO: 70 números e 7 tentativas  \n")
          escreva("3- Nível DIFÍCIL: 100 números e 5 tentativas \n\n")
        	escreva("Resposta:")
        	leia(menuOpcao)
        	limpa()     
        } 	
			

							
		funcao jogar(){			//função que guarda o número que o usuário digita	
			se(menuOpcao==1){
        		escreva("Digite um numero entre 1 e 50 para tentar adivinhar!\n\n")
        		escreva("Resposta:")
        		leia(numero)
        		limpa()
			}
        		senao se(menuOpcao==2){
        		escreva("Digite um numero entre 1 e 70 para tentar adivinhar!\n\n")
        		escreva("Resposta:")
        		leia(numero)
        		limpa()
        		}
            senao se(menuOpcao==3){
        		escreva("Digite um numero entre 1 e 100 para tentar adivinhar!\n\n")
        		escreva("Resposta:")
        		leia(numero)
        		limpa()
        		}
		}				
			
		

	   							
	   funcao reiniciar(){							
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
        } 
			


          						
	   funcao sortear(){ 		//função para sortear aleatoriamente o número a ser adivinhado
        	se(menuOpcao==1) sorteio = u.sorteia(1, 50)
        		senao se(menuOpcao==2) sorteio = u.sorteia(1, 70) 
              senao se(menuOpcao==3) sorteio = u.sorteia(1, 100)

	   }		
		


						
        funcao regras(){  	//função que dita as regras do jogo

        	se(menuOpcao==1){
        		valorMaximo=50
            chances=9}

          senao se(menuOpcao==2){
        		valorMaximo=70
            chances=6
          }	  
        	senao se(menuOpcao==3){
        		valorMaximo=100
            chances=4	
        	}
        			             	
        								
        	enquanto(numero!=sorteio e tentativas<=chances){ 	//condição usada para dar funcionalidade ao jogo

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
                
	          } 
						
			
			se(numero==sorteio){
	           	limpa()
	           	escreva("Parabéns você acertou!!!\n\n") 
	           	reiniciar()         	
	           	}
	
	        	
	        	se(tentativas>chances){
	        		limpa()
	        		escreva("Game Over!! O número sorteado era ",sorteio,"\n\n")				
	        		reiniciar()   	
	       		}
              

	        	
	        } 		
			
        
       
        

      funcao inicio() {
      	menuJogo()
      	sortear()
      	jogar()
      	regras()
      	
        
      }
}
      


  
  

	
