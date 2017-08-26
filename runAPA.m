%Para chamar as fun��es do aspirador de p� automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
%---Ambiente---
%Gerar o ambiente
ambiente = geraAmbiente();
%Mostrar o ambiente
mostraAmbiente(ambiente);
%Coordernadas de in�cio do agente aspirador de p�
x = 2;
y = 3;
%pesquise para ver para que servem as fun��es (hold on, hold off e pause)
hold on; %mant�m est�tico o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posi��es estabelecidas anteriormente
posicaoAspirador(y,x);
hold off;
pause(1);

%se a c�lula estiver suja ent�o retornar� 1, caso contr�rio, 0

%gera uma vari�vel de estrutura para saber a posi��o e o estado de cada
%c�lula = struct('nome', valor) - veja a fun��o struct

percepcao = struct("ambiente", ambiente, "x", x, "y", y); 

%---a��es do agente---
acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'};


while 1
    
    
    %escolhe a a��o de acordo com a percep��o - chama fun��o agenteReativoSimples
    acao = agenteReativoSimples(percepcao);
    %chama a fun��o atualizaAmbiente para atualizar a a��o realizada
    [a1, y1, x1] = atualizaAmbiente(percepcao.ambiente, acao, percepcao.y, percepcao.x);
    percepcao.ambiente = a1;
    percepcao.y = y1;
    percepcao.x = x1;
    %Mostra na tela as a��es escolhidas e percep��es (veja as fun��es 'disp' e 'num2str')
    
    
    %mostra o ambiente atualizado
    mostraAmbiente(percepcao.ambiente);
    %posiciona o aspirador no ambiente atualizado
    hold on;
    posicaoAspirador(percepcao.y, percepcao.x);
    hold off;
    pause(1);
    
    %atualiza a percep��o e o estado depois de concluir a a��o
    
end

