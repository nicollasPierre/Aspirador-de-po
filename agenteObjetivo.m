%Gera a��es aleat�rias no caso em que o quadrado est� limpo, sen�o aspira o
%p�
function acao=agenteObjetivo(percepcao)

  if percepcao.ambiente(percepcao.y, percepcao.x) == 2
    acao = 5;
  else
    direcao = ones(6,6);
    direcao(2:5,2:5) = [2 2 2 4; 3 4 1 4; 3 4 3 4; 3 1 3 1]';
    acao = direcao(percepcao.y, percepcao.x);
  end

end