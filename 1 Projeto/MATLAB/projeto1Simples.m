%Autor: Guilherme Rodrigues - 18/03/2019
%Projeto 1
%Este programa le a serial e imprime a leitura
%na barra de comandos

clc, clearvars

%Fechar e apagar todas a portas
portas = instrfind;
if length(portas) > 0
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
    if s.BytesAvailable > 0
        leitura = fscanf(s,'%lu');
        disp('Leitura: ')
        disp(leitura);
    end
end