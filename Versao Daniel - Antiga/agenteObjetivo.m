%Gera ações aleatórias no caso em que o quadrado está limpo, senão aspira o
%pó
function acao=agenteObjetivo(percepcao, ObjObtido)

  if percepcao.ambiente(percepcao.y, percepcao.x) == 2
    acao = 5;%Limpa sala
  elseif !ObjObtido
    direcao = ones(6,6);% 2 = baixo, 4 = direita, 3 = esquerda, 1 = cima
    direcao(2:5,2:5) = [2 2 2 4; 3 4 1 4; 3 4 3 4; 3 1 3 1]';
    acao = direcao(percepcao.y, percepcao.x);
  else
    acao = 6%NoOP
  end

end