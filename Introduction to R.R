
medias_calc <- function(z)
{
  Nomes <- as.character()
  Prova1 <- as.numeric()
  Prova2 <- as.numeric()
  Prova3 <- as.numeric()
  M�diaEscolar <- as.numeric()
  Situa��o <- as.character()
  
    alunos <- data.frame(Nomes,Prova1,Prova2,Prova3,M�diaEscolar,Situa��o)
    alunos$Situa��o <- as.character(alunos$Situa��o)
    alunos$Nomes <- as.character(alunos$Nomes)
    
  print('Esta fun��o realiza as seguintes atividades:')
  print('1 - Cadastra alunos')
  print('2 - Recebe suas notas')
  print('3 - Mostra sua m�dia e diz se foi aprovado')
  
  # Recebe notas do aluno i nos 3 exerc�cios
  print('Cadastro de Alunos --> Digite 1')
  x <- scan(n=1)
  i <- 1
  
  while(x==1)
  {
    
    print('Nome:')
    nome <- scan(what=character(), nmax = 1)
    
    print('Nota 1:')
    Prova1 <- scan(n=1)
    
    print('Nota 2:')
    Prova2 <- scan(n=1)
    
    print('Nota 3:')
    Prova3 <- scan(n=1)
    
    notas <- c(Prova1, Prova2, Prova3)
    
      for (j in 1:length(notas))
        {
          cat('Nota na Prova',j,'-->')
          cat('',notas[j],'\n')
        
        } # fim do for
      
      M�diaEscolar <- mean(notas)
      cat('M�dia do Aluno:', M�diaEscolar, '\n')
      
    if (M�diaEscolar >= 7)
      {
        print('Aluno aprovado!')
        Situa��o <- 'Aprovado'
      
      } # fim do if
    
    if (M�diaEscolar < 7)
      {
        print('Aluno reprovado!')
        Situa��o <- 'Reprovado'
        
      } # fim do if
      
    alunos[i,] <- c(nome,Prova1,Prova2,Prova3,M�diaEscolar,Situa��o)
    
  print('Cadastrar outro aluno?  Sim-> 1  N�o -> 0')
  x <- scan(n=1)
  
i <- i+1
} # fim do while
  
print('Obrigado')
print('Banco de Dados')

return(alunos)

}