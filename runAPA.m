%Para chamar as funções do aspirador de pó automatico (APA) baseado em um agente
%reativo simples
clear all;clc; close all;


%---Ambiente---
%---Ambiente---
%Gerar o ambiente
ambiente = geraAmbiente();
%Mostrar o ambiente
mostraAmbiente(ambiente);
%Coordernadas de início do agente aspirador de pó
x = 2;
y = 3;
%pesquise para ver para que servem as funções (hold on, hold off e pause)
hold on; %mantém estático o ambiente feito anteriormente para posicionar o limpador
%posizionar o APA nas posições estabelecidas anteriormente
posicaoAspirador(y,x);
hold off;
pause(1);

%se a célula estiver suja então retornará 1, caso contrário, 0

%gera uma variável de estrutura para saber a posição e o estado de cada
%célula = struct('nome', valor) - veja a função struct

percepcao = struct("ambiente", ambiente, "x", x, "y", y); 

%---ações do agente---
acoesAg= {'acima', 'abaixo', 'esquerda', 'direita', 'aspirar'};


while 1
    
    
    %escolhe a ação de acordo com a percepção - chama função agenteReativoSimples
    acao = agenteReativoSimples(percepcao);
    %chama a função atualizaAmbiente para atualizar a ação realizada
    [a1, y1, x1] = atualizaAmbiente(percepcao.ambiente, acao, percepcao.y, percepcao.x);
    percepcao.ambiente = a1;
    percepcao.y = y1;
    percepcao.x = x1;
    %Mostra na tela as ações escolhidas e percepções (veja as funções 'disp' e 'num2str')
    
    
    %mostra o ambiente atualizado
    mostraAmbiente(percepcao.ambiente);
    %posiciona o aspirador no ambiente atualizado
    hold on;
    posicaoAspirador(percepcao.y, percepcao.x);
    hold off;
    pause(1);
    
    %atualiza a percepção e o estado depois de concluir a ação
    
end

