/// Programa baseado em lógica fuzzy (inferência de Mamdani) que receba três valores: pressão no pedal, velocidade da roda e //
/// velocidade do carro e que devolva a pressão no freio. O programa deverá apresentar também a área formada para o cálculo do centroide. ///

///// Maria Gabriele bezerra da Silva /////

clear; //// Limpa o console antes da execução // 
clc;

disp('Questão 01: Calcula a Inferencia de Mandani');
///  Input para receber os valores (0 a 100) do usuário para definir a Pressão no Pedal ///

P_Pedal = input("Digite um número de 0 a 100 para a Pressão no Pedal: "); 

/// Após receber o valor precisamos fazer a definição dos Conjuntos Nebulosos e das funções de Pertinência: ///
/// Definiremos os Conjuntos Nebulosos relacionados a Pressão no Pedal ///

if(P_Pedal >= 0 & P_Pedal <= 50 ) then
    Baixa = (((-1)*P_Pedal)/50) + 1;
    mprintf("A pressão no pedal de valor (%.2f) tem valor de pertinencia BAIXO igual a:%3f\n ",P_Pedal,Baixa);
else
    Baixa = 0.0;
    mprintf("A pressão no pedal de valor (%.2f) tem valor de pertinencia BAIXO igual a:%3f\n ",P_Pedal,Baixa);
end
/// Para o calculo da função de pertinência que descreve o comportamento da pressão no pedal com valor linguistico BAIXO, foi utilizado o método da equação da reta. Onde nos mostra o seguinte: Dados dois pontos nebulosos da função Baixa (0,1) e (50,0), na qual o valor de x representa o valor da Pressão do Pedal e o valor de y representa o valor de pertinência dessa pressão na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos. Portanto, se o valor da pressão no pedal estiver entre 0 e 50, então essa pressão irá pertencer a função de pertinência com valor linguístico BAIXO e seu valor de pertinência será calculado pela seguinte equação: Baixa = (((-1)*P_Pedal)/50) + 1; 
/// Porém, se a pressão não estiver dentro desse intervalo, então o valor de pertinência da função Baixa receberá o valor 0 ///

if(P_Pedal >= 30 & P_Pedal <= 50 ) then
    Media = (P_Pedal)/20 - 3/2;
    mprintf("A pressão no pedal de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",P_Pedal,Media);
elseif(P_Pedal >= 50 & P_Pedal <= 70 ) then
    Media = (-1*(P_Pedal))/20 + 7/2;
    mprintf("A pressão no pedal de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",P_Pedal,Media);
else 
    Media = 0.0;
    mprintf("A pressão no pedal de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",P_Pedal,Media);
end
/// Para encontrar a função de pertinência que descreve o comportamento da pressão no pedal com valor linguistico MEDIA, foi utilizado o método da equação da reta. No caso da função de pertinencia MÉDIA, temos 3 pontos (30,0) e (50,1), na qual o valor de x representa o valor da Pressão do Pedal e o valor de y representa o valor de pertinência dessa pressão na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos: Media = (P_Pedal)/20 - 3/2; . Depois, calculamos a equação da outra reta que liga os pontos (50,1) e (70,0) e encontrou-se a equação: Media = (-1*(P_Pedal))/20 + 7/2 . 
/// Portanto, se o valor da pressão no pedal estiver entre 30 e 50 ou então, entre 50 e 70, então essa pressão irá pertencer a função de pertinência com valor linguístico MÉDIA e seu valor de pertinência poderá ser calculado atraves das duas equações: Media = (P_Pedal)/20 - 3/2 e Media = (-1*(P_Pedal))/20 + 7/2. 
/// Porém, se a pressão não estiver dentro desse intervalo, então o valor de pertinência da função Media receberá o valor 0. ///

if(P_Pedal >= 50 & P_Pedal <= 100 ) then
    Alta = (P_Pedal)/50 - 1;
    mprintf("A pressão no pedal de valor (%.2f)tem valor de pertinencia ALTA igual a:%3f\n ",P_Pedal,Alta);
else
    Alta = 0.0;
    mprintf("A pressão no pedal de valor (%.2f)tem valor de pertinencia ALTA igual a:%3f\n ",P_Pedal,Alta);
end
/// Para encontrar a função de pertinência que descreve o comportamento da pressão no pedal com valor linguistico ALTO, foi utilizado o método da equação da reta. Dados os dois pontos nebulosos da função ALTA, (50,1) e (100,1), na qual o valor de x representa o valor da Pressão do Pedal e o valor de y representa o valor de pertinência dessa pressão na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos. Portanto, se o valor da pressão no pedal estiver entre 50 e 100, essa pressão irá pertencer a função de pertinência com valor linguístico ALTO e seu valor de pertinência será calculado pela equação: Alta = (P_Pedal)/50 - 1; 
/// Porém, se a pressão não estiver dentro desse intervalo, então o valor de pertinência da função Alta receberá o valor 0. ///

mprintf("\n"); /// Pula linha para ajudar na organização ///
mprintf("\n");

V_Roda = input("Digite um número de 0 a 100 para a Velocidade da Roda: ");

/// Definiremos os Conjuntos Nebulosos relacionados a Velocidade da Roda ///
if(V_Roda >= 0 & V_Roda <= 60) then
    Devagar = (((-1)*V_Roda)/60) + 1;
    mprintf("A Velocidade da Roda de valor (%.2f) tem valor de pertinencia DEVAGAR igual a:%3f\n ",V_Roda,Devagar);
else
    Devagar = 0.0;
    mprintf("A Velocidade da Roda de valor (%.2f) tem valor de pertinencia DEVAGAR igual a:%3f\n ",V_Roda,Devagar);
end
/// Para encontrar a função de pertinência que descreve o comportamento da velocidade da roda com valor linguistico DEVAGAR, foi utilizado novamente o método da equação da reta. Dados os dois pontos nebulosos da função Devagar(S), (0,1) e (60,0), na qual o valor de x representa o valor da Velocidade da Roda e o valor de y representa o valor de pertinência dessa Velocidade na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos. Portanto, se o valor da velocidade da roda estiver entre 0 e 60, então essa velocidade irá pertencer a função de pertinência com valor linguístico DEVAGAR e seu valor de pertinência será calculado atraves da equação: Devagar = (((-1)*V_Roda)/60) + 1; 
/// Porém, se a velocidade da roda não estiver dentro desse intervalo, então o valor de pertinência da função Devagar receberá o valor 0. ///

if(V_Roda >= 20 & V_Roda <= 50) then
    Media_R = (V_Roda)/30 - 2/3; 
    mprintf("A Velocidade da Roda de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",V_Roda, Media_R);
elseif(V_Roda >= 50 & V_Roda <= 80) then
    Media_R = (-1*(V_Roda))/30 + 8/3;
    mprintf("A Velocidade da Roda de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",V_Roda, Media_R);
else 
    Media_R = 0.0;
    mprintf("A Velocidade da Roda de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",V_Roda, Media_R);
end
/// Para encontrar a função de pertinência que descreve o comportamento da velocidade da Roda com valor linguistico MEDIA, foi utilizado o método da equação da reta. No caso da função de pertinencia MÉDIA(M), foram dados 3 pontos,(20,0) e (50,1), na qual o valor de x representa o valor da Velocidade da Roda e o valor de y representa o valor de pertinência dessa Velocidade na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos: Media_R = (V_Roda)/30 - 2/3; Depois, calculamos a equação da outra reta que liga os pontos (50,1) e (80,0): Media_R = (-1*(V_Roda))/30 + 8/3;. Portanto, se o valor da Velocidade da Roda estiver entre 20 e 50 ou então, entre 50 e 80, essa velocidade irá pertencer a função de pertinência com valor linguístico MÉDIA e seu valor de pertinência poderá ser calculado atraves das duas equações:  Media_R = (V_Roda)/30 - 2/3; e Media_R = (-1*(V_Roda))/30 + 8/3. ///
/// Porém, se a velocidade da roda não estiver dentro desse intervalo, então o valor de pertinência da função Média_R receberá o valor 0. ///

if(V_Roda >= 40 & V_Roda <= 100) then
    Rapida = (V_Roda)/60 - 4/6;
    mprintf("A Velocidade da Roda de valor (%.2f)tem valor de pertinencia RAPIDA igual a:%3f\n ",V_Roda, Rapida);
else
    Rapida = 0.0;
    mprintf("A Velocidade da Roda de valor (%.2f)tem valor de pertinencia RAPIDA igual a:%3f\n ",V_Roda, Rapida);
end
/// Para encontrar a função de pertinência que descreve o comportamento da velocidade da roda com valor linguistico RÁPIDA, foi utilizado o método da equação da reta. Dados os dois pontos nebulosos da função Rápido(F), (40,0) e (100,1), na qual o valor de x representa o valor da Velocidade da Roda e o valor de y representa o valor de pertinência dessa Velocidade na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos. Portanto, se o valor da velocidade da roda estiver entre 40 e 100, então essa velocidade irá pertencer a função de pertinência com valor linguístico RÁPIDO e seu valor de pertinência será calculado atraves da equação: Rapida = (V_Roda)/60 - 4/6; ///
/// Porém, se a velocidade da roda não estiver dentro desse intervalo, então o valor de pertinência da função Rapida receberá o valor 0. ///

mprintf("\n"); /// Pula linha para ajudar na organização ///
mprintf("\n");

V_Carro = input("Digite um número de 0 a 100 para a Velocidade do Carro: ");

/// Definremos os Conjuntos Nebulosos relacionados a Velocidade do Carro: ///
if(V_Carro >= 0 & V_Carro <= 60 ) then
    Devagar2 = (((-1)*V_Carro)/60) + 1;
    mprintf("A Velocidade do Carro de valor (%.2f) tem valor de pertinencia DEVAGAR igual a:%3f\n ",V_Carro,Devagar2);
else
    Devagar2 = 0.0;
    mprintf("A Velocidade do Carro de valor (%.2f) tem valor de pertinencia DEVAGAR igual a:%3f\n ",V_Carro,Devagar2);
end
/// Para encontrar a função de pertinência que descreve o comportamento da velocidade do carro com valor linguistico DEVAGAR, foi utilizado o método da equação da reta. Dados os dois pontos nebulosos da função Devagar(S), (0,1) e (60,0), na qual o valor de x representa o valor da Velocidade do carro e o valor de y representa o valor de pertinência dessa Velocidade na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos. Portanto, se o valor da velocidade do carro estiver entre 0 e 60, então essa velocidade irá pertencer a função de pertinência com valor linguístico DEVAGAR: Devagar2 = (((-1)*V_Carro)/60) + 1; ///
/// Porém, se a velocidade do carro não estiver dentro desse intervalo, então o valor de pertinência da função Devagar2 receberá o valor 0. ///

if(V_Carro >= 20 & V_Carro <= 50) then
    Media2 = (V_Carro)/30 - 2/3; 
    mprintf("A Velocidade do Carro de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",V_Carro, Media2);
elseif(V_Carro >= 50 & V_Carro <= 80) then
    Media2 = (-1*(V_Carro))/30 + 8/3;
    mprintf("A Velocidade do Carro de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",V_Carro, Media2);
else 
    Media2 = 0.0;
    mprintf("A Velocidade do Carro de valor (%.2f)tem valor de pertinencia MEDIA igual a:%3f\n ",V_Carro, Media2);
end
/// Para encontrar a função de pertinência que descreve o comportamento da velocidade do Carro com valor linguistico MEDIA, foi utilizado o método da equação da reta. Dados os 3 pontos nebulosos da função de pertinencia MÉDIA(M), (20,0) e (50,1), na qual o valor de x representa o valor da Velocidade da carro e o valor de y representa o valor de pertinência dessa Velocidade na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos: Media2 = (V_Carro)/30 - 2/3; Depois, calculamos a equação da outra reta que liga os pontos (50,1) e (80,0): Media2 = (-1*(V_Carro))/30 + 8/3;. Portanto, se o valor da Velocidade do carro estiver entre 20 e 50 ou então, entre 50 e 80, essa velocidade irá pertencer a função de pertinência com valor linguístico MÉDIA e seu valor de pertinência poderá ser calculado atraves das duas equações:  Media2 = (V_Carro)/30 - 2/3;  e Media2 = (-1*(V_Carro))/30 + 8/3. ///
/// Porém, se a velocidade do carro não estiver dentro desse intervalo, então o valor de pertinência da função Média2 receberá o valor 0. ///

if(V_Carro >= 40 & V_Carro <= 100) then
    Rapida2 = (V_Carro)/60 - 4/6;
    mprintf("A Velocidade do Carro de valor (%.2f)tem valor de pertinencia RAPIDA igual a:%3f\n ",V_Carro,Rapida2);
else
    Rapida2 = 0.0;
    mprintf("A Velocidade do Carro de valor (%.2f)tem valor de pertinencia RAPIDA igual a:%3f\n ",V_Carro,Rapida2);
end
mprintf("\n");
/// Para encontrar a função de pertinência que descreve o comportamento da velocidade do carro com valor linguistico Rapido, foi utilizado o método da equação da reta. Dados os dois pontos nebulosos da função Rapida(F), (40,0) e (100,1), na qual o valor de x representa o valor da Velocidade do carro e o valor de y representa o valor de pertinência dessa Velocidade na função. Somos capazes de calcular o coeficiente angular da reta que liga esses dois pontos. Portanto, se o valor da velocidade do carro estiver entre 40 e 100, então essa velocidade irá pertencer a função de pertinência com valor linguístico RAPIDO e seu valor de pertinência será calculado pela equação: Rapida2 = (V_Carro)/60 - 4/6; ///
/// Porém, se a velocidade do carro não estiver dentro desse intervalo, então o valor de pertinência da função Rapida2 receberá o valor 0. ///

/// IMPLEMENTAÇÃO DAS 4 REGRAS DO SLIDE ///
/// Regra nº 1 ///
/// SE a pressão no pedal do freio for média ENTÃO aplicar o freio: ///
if((P_Pedal >= 30 & P_Pedal <= 50) || (P_Pedal >= 50 & P_Pedal <= 70)) then
   R1=Media;
   mprintf("A Regra de nº 1 nos dá um valor de %f para a instrução APERTE O FREIO\n", R1);
else
    R1=0;
    mprintf("A Regra de nº 1 nos dá um valor de %f para a instrução APERTE O FREIO\n", R1); 
end
   
/// Regra nº 2 ///
/// SE a pressão no pedal de freio for alta E a velocidade do carro for alta E a velocidade das rodas for alta ENTÃO aplicar o freio: ///
if((P_Pedal >= 50 & P_Pedal <= 100) & (V_Carro >= 40 & V_Carro <= 100) & (V_Roda >= 40 & V_Roda <= 100)) then
    R2=min(Alta, Rapida, Rapida2);
    mprintf("A Regra de nº 2 nos dá um valor de %f para a instrução APERTE O FREIO\n", R2);
else
    R2=0;
    mprintf("A Regra de nº 2 nos dá um valor de %f para a instrução APERTE O FREIO\n", R2);
end

/// Regra nº 3 ///
/// SE a pressão no pedal de freio for alta E a velocidade do carro for alta E a velocidade das rodas for alta ENTÃO aplicar o freio: ///
if((P_Pedal >= 50 & P_Pedal <= 100) & (V_Carro >= 40 & V_Carro <= 100) & (V_Roda >= 0 & V_Roda <= 60)) then
    R3=min(Alta, Rapida, Devagar);
    mprintf("A Regra de nº 3 nos dá um valor de %f para a instrução LIBERE O FREIO\n", R3);
else
    R3=0;
    mprintf("A Regra de nº 3 nos dá um valor de %f para a instrução LIBERE O FREIO\n", R3);
end

/// Regra nº 4 ///
/// SE a pressão no pedal de freio for baixa ENTÃO liberar o freio: ///
if(P_Pedal >= 0 & P_Pedal <= 50) then
    R4=Baixa;
    mprintf("A Regra de nº 4 nos dá um valor de %f para a instrução LIBERE O FREIO\n", R4);
else
    R4=0;
    mprintf("A Regra de nº 4 nos dá um valor de %f para a instrução LIBERE O FREIO\n", R4);
end

mprintf("\n");


/// Plotando o grafico para visualização do calculo do centroide ///

Pressão = [1:1:100]; /// Denifinição do intervalo da pressão //
Aperte = Pressão/100; /// Aperte o freio ///
Libere =(-1*Pressão)/100 + 1; /// Libere o freio ///
AR = max(min(R1+R2,Aperte),min(R3+R4,Libere))/// Definição da função resultante ///

plot(Pressão,AR)/// Plotando o gráfico para a função resultante ///
h = gca(); 
h.data_bounds = [0,0 ; 100, 1]; 

/// Definição de variáveis auxiliares soma e div: ///
soma=0  
div=0
for i=1:1:100 /// Calculo do centroide pra defuzzificação ///
     soma=soma+(AR(i)*i);
     div=div+AR(i);
end
disp("O Valor da pressão no freio será igual:");     
disp(soma/div);    
