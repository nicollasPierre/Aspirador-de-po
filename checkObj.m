%verifica se há sujeira na sala 
%retorna 1 se tem sujeira, caso contrário retorna 0
function objObtido=checkObj(sala)
objObtido = sala.ambiente(sala.x, sala.y) == 2
%checar da sala inteira  


end