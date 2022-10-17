function [ x,y,z ] = SisFinanciero( x_in,y_in,z_in,a,b,c )
%Sistema_Financiero 
%Inputs:
%     x_In: Condicion Inicial o de entrada en x
%     y_In: Condicion Inicial o de entrada en y
%     z_In: Condicion Inicial o de entrada en z
% Outputs:
%     x: Solucion en x
%     y: Solucion en y
%     z: Solucion en z
%--------------------------------------------------
%--------------------------------------------------
%Señal x:
x = z_in + x_in*(y_in - a);
%Señal y:
y = 1 - b*(y_in) - abs(x_in);
%Señal z:
z = (-1)*x_in - c*(z_in);
end

