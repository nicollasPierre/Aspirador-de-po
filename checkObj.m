%verifica se h� sujeira na sala 
%retorna 1 se tem sujeira, caso contr�rio retorna 0
function objObtido=checkObj(sala)
objObtido = sala.ambiente(sala.x, sala.y) == 2
%checar da sala inteira  


end