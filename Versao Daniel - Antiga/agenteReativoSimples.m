% Fun��o de agente reativo simples para o mundo 4 x 4 do aspirador de p� autom�tico
% que garante limpar toda a sala, independentemente da posi��o inicial. 
% A fun��o deve retornar um das 5 poss�veis a��es a��es do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A vari�vel "percepcao" dentro dos par�nteses � a entrada da fun��o.
function acao = agenteReativoSimples(percepcao)

  if percepcao.ambiente(percepcao.y, percepcao.x) == 2
    acao = 5;
  else
    direcao = ones(6,6);
    direcao(2:5,2:5) = [2 2 2 4; 3 4 1 4; 3 4 3 4; 3 1 3 1]';
    acao = direcao(percepcao.y, percepcao.x);
  end
% Para cada posi��o definir as a��es dispon�veis (funcaoMapear)
% a��es = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5

end