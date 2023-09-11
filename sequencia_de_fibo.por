programa{
	
	

  funcao inteiro fibo(inteiro n){
    		se(n == 1)
      		retorne 0
    		senao{
      		se(n == 2)
        	retorne 1
      	
      	senao
        		retorne fibo(n - 1) + fibo(n - 2)
    	}
  }
  
  funcao inicio(){
    		inteiro n
		escreva("Calculo da sequência de Fibonacci")
		escreva("\nDigite o termo da sequência que deseja descobrir:\n")
		escreva("\nResposta:")
    		leia(n)
		
	limpa()
		
    		escreva("O termo ", n, " é: ", fibo(n))
  
  }
}
