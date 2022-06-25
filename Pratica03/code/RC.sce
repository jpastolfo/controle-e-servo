// Copyright (C) 2022
// Universidade Federal de São Carlos
// Departamento de Computação
//
// Anna Carolina Sardinha Alves, 770084
// Daniel Ferezin Ferrari, 744638
// João Pedro Imbriani Astolfo, 744654
//
// Date of creation: 24/06/2022
//

V_fonte = 5;
R = 1000;
C = 0.001;
t = linspace(0, 10, 100);

tao = R*C;

// Soluções gerais para Vc(t) e i(t)

Vc = V_fonte * (1 - exp(-t/tao));
i = (V_fonte/R) * exp(-t/tao);

figure(1)
plot(t, Vc)
xgrid(0)
xlabel('Tempo (s)')
ylabel('Tensão no Capacitor (V)')
title('Gráfico de tensão no capacitor em função do tempo')

figure(2)
plot(t, i)
xgrid(0)
xlabel('Tempo (s)')
ylabel('Corrente (A)')
title('Gráfico da Corrente no Circuito em função do tempo')
