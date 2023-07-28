clear;
clc;
% f = input("Ingrese la función f(x, y): ", 's');
% S = vectorize(char(f));
% fun = str2func(['@(x,y)',f]);
% v = symvar(f);
% g = gradient(fun, v);
% disp(g);
syms x y z;
f = input("Ingrese la función f(x, y): ");
xi = input("x_i: ");
xf = input("x_f: ");
yi = input("y_i: ");
yf = input("y_f: ");
zi = input("z_i: ");
zf = input("z_f: ");
d = input("Incremento: ");
g = gradient(f,[x,y,z]);
u = g(1);
v = g(2);
w = g(3);
[X, Y, Z] = meshgrid(linspace(xi, xf, d), linspace(yi, yf, d), linspace(zi, zf, d));
G1 = subs(u, [x y z], {X, Y, Z});
G2 = subs(u, [x y z], {X, Y, Z});
G3 = subs(u, [x y z], {X, Y, Z});
vector = quiver3(X, Y, Z, G1, G2, G3);