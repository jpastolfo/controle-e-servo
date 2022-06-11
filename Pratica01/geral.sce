// Copyright (C) 2022
// Universidade Federal de São Carlos
// Departamento de Computação
//
// Anna Carolina Sardinha Alves, 770084
// Daniel Ferezin Ferrari, 744638
// João Pedro Imbriani Astolfo, 744654
//
// Date of creation: 11/06/2022
//

// ==================
// Vetores e matrizes

x = int(100*rand(1, 5))

A = int(100*rand(4, 4))

y = x'

B = A'

z = rand(1, 5)

C = grand(4, 4, 'unf', 1, 9999)

// ========================
// Formatos de apresentação

// precisa ser o número de dígitos mais os caracteres especiais (pontuação, notação exponcencial, sinal...)
// Sendo assim, 7 = 2 (ponto e sinal) + 5 (dígitos)
//             11 = 6 (ponto, sinal e notação) + 5 (dígitos)
format("v", 7)
disp(x, A, z, C)

format("e", 11)
disp(x, A, z, C)

format("v", 17)
disp(x, A, z, C)

format("e", 21)
disp(x, A, z, C)

// retorna os valores com aproximação de floating point racional
rat(x)
rat(A)
rat(y)
rat(C)

// =================
// Números complexos

k = [3 + 5*%i 2 - 10*%i]

D = [3 + 5*%i 2 - 10*%i
    7 - 13*%i 1.7 - 4*%i]

mod_k = abs(k)
// para o ângulo basta utilizar relações trigonométricas com as partes real e
// imaginágia do número complexo.
ang_k = atan(imag(k)./real(k))*180/%pi

mod_D = abs(D)
ang_D = atan(imag(D)./real(D))*180/%pi

E = D.' // matriz transposta
F = D' // matriz transposta conjugada

// ======================
// Operações com matrizes

A + C

A - C

A*C // multiplicação matricial

A.*C // multiplicação dos elementos

inv(A) // inversa

A/C

A\C

A./C

exp(x)

exp(A)

x^4

A^2

// ==================================
// Vetores com espaçamento controlado

t1 = linspace(0, 10, 11)
t2 = linspace(0, 10, 101)
t3 = linspace(-10, 10, 5)
t4 = linspace(50, 0, 6)

// =======================
// Manipulação de matrizes

A2 = A(3:4, 1:2)

A3 = [A; x(1:4)]

// =======
// Funções

p1 = funcTeste(t1)
p2 = funcTeste(t2); // ponto e vírgula aqui pois esse vetor é grande. Isso evita que ocupe o console. Descomente a linha abaixo para visualizar
//p2

// ========
// Gráficos

plot(t1, p1, 'r*')
plot(t2, p2, 'g-')
title('Vetor p em função de t')
xlabel('Posição')
ylabel('Valor')
legend(prettyprint(['p(t1)' 'p(t2)'], 'latex', '', %t), 2)
gcf().children.grid = color("grey70")*[1 1];
gcf().children.children([1 2]).font_size=3;
