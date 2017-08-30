%verifica se há sujeira na sala 
%retorna 1 se tem sujeira, caso contrário retorna 0
function objObtido=checkObj(sala)
  objObtido = 0;
  for i = 2:5
    for j = 2:5
      if sala.ambiente(i,j) == 2;
        objObtido = 1;
        i = 6;
        j = 6;
       end
    end
  end
%checar da sala inteira  


end