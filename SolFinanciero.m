clear;
clc;
%------------------------------------Solución numérica de Grünwald-Letnikov
%Vectores del tamaño de soluciones
s = 50000; %Soluciones
%Condiciones Iniciales
x_ini = 0.1;
y_ini = 0.1;
z_ini = 0.1;
C_ini = 1;
%Constantes a b c alpha h
alpha = 0.9;  %Orden fraccionario
h = 0.01;      %Paso de integración
%Funcion Solucion
[x,y,z] = Grun_Let_Financiero(s,x_ini,y_ini,z_ini,C_ini,h,alpha);
%Figuras
figure
plot(x,y)
xlabel('Estado X^{(\alpha)}')
ylabel('Estado Y^{(\alpha)}')
grid on
figure
subplot(1,2,1)
plot(x,z)
xlabel('Estado X^{(\alpha)}')
ylabel('Estado Z^{(\alpha)}')
grid on
subplot(1,2,2)
plot(y,z)
xlabel('Estado Y^{(\alpha)}')
ylabel('Estado Z^{(\alpha)}')
grid on