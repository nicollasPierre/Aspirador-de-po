% Função de agente reativo simples para o mundo 4 x 4 do aspirador de pó automático
% que garante limpar toda a sala, independentemente da posição inicial. 
% A função deve retornar um das 5 possíveis ações ações do agente= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
% A variável "percepcao" dentro dos parênteses é a entrada da função.
function acao = agenteReativoSimples(percepcao)

  if percepcao.ambiente(percepcao.y, percepcao.x) == 2
    acao = 5;
  else
    direcao = ones(6,6);
    direcao(2:5,2:5) = [2 2 2 4; 3 4 1 4; 3 4 3 4; 3 1 3 1]';
    acao = direcao(percepcao.y, percepcao.x);
  end
% Para cada posição definir as ações disponíveis (funcaoMapear)
% ações = {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'}
%            1         2          3           4          5

end