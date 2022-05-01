
medias_calc <- function(z)
{
  Nomes <- as.character()
  Prova1 <- as.numeric()
  Prova2 <- as.numeric()
  Prova3 <- as.numeric()
  MédiaEscolar <- as.numeric()
  Situação <- as.character()
  
    alunos <- data.frame(Nomes,Prova1,Prova2,Prova3,MédiaEscolar,Situação)
    alunos$Situação <- as.character(alunos$Situação)
    alunos$Nomes <- as.character(alunos$Nomes)
    
  print('Esta função realiza as seguintes atividades:')
  print('1 - Cadastra alunos')
  print('2 - Recebe suas notas')
  print('3 - Mostra sua média e diz se foi aprovado')
  
  # Recebe notas do aluno i nos 3 exercícios
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
      
      MédiaEscolar <- mean(notas)
      cat('Média do Aluno:', MédiaEscolar, '\n')
      
    if (MédiaEscolar >= 7)
      {
        print('Aluno aprovado!')
        Situação <- 'Aprovado'
      
      } # fim do if
    
    if (MédiaEscolar < 7)
      {
        print('Aluno reprovado!')
        Situação <- 'Reprovado'
        
      } # fim do if
      
    alunos[i,] <- c(nome,Prova1,Prova2,Prova3,MédiaEscolar,Situação)
    
  print('Cadastrar outro aluno?  Sim-> 1  Não -> 0')
  x <- scan(n=1)
  
i <- i+1
} # fim do while
  
print('Obrigado')
print('Banco de Dados')

return(alunos)

}