%Autor: Guilherme Rodrigues - 18/03/2019
%Projeto 2
%Este programa le a serial e imprime se
%o led esta acesso ou apagado

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
    if s.BytesAvailable > 0
        leitura = fscanf(s,'%d');
        fprintf('Leitura = %d \n',leitura);
        if leitura == 0
            disp('O led esta apagado!')
        else
            disp('O led esta acesso!')
        end
    end
end