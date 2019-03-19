%Autor: Guilherme Rodrigues - 18/03/2019
%Projeto 3
%Este programa envia pela serial um valor
%o arduino processa esse valor

clc, clearvars

%Fechar e apagar todas a portas
portas = instrfind;
if ~isempty(portas)
    disp('Há portas seriais iniciadas, fechando-as...')
    fclose(portas);
    delete(portas);
end

%Iniciar comunicação com a por 'COMx'
s = serial('COM2');
disp('Abrindo porta serial...')
fopen(s);
disp('Porta serial aberta! Pressione ''Crtl+C'' para parar.')

flushinput(s); %Limpa o buffer de entrada
while(1)
    entrada = input('Digite 0 ou 1 para controlar o led: ');
    fprintf(s,'%d',entrada);
    leitura = fscanf(s);
    disp('Leitura Serial: ')
    disp(leitura);
end