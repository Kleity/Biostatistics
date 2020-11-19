function distribucion
Archivo=fullfile('C:\Users\leonardo\Documents\MATLAB\bioestadistica\prueba1.txt');
Dat = fopen(Archivo,'r');
n=1;
while ~feof(Dat)
   leer_linea = fgetl(Dat);
   if isempty(leer_linea) || ~ischar(leer_linea), break, end
   C(n)= cellstr(leer_linea);
   n=n+1;
end
fclose(Dat);
C=C';
m=zeros(size(C,1),size(C,2));
    m=str2double(C);
    d=sort(m);
@media;@varianza;
V=Varianza^(1/2);
e=1/(V*(2*pi)^(1/2));
for i=1:length(d)
    x(i)=(-0.5)*((d(i)-Media)/V)^2;
    x(i)=e*exp(x(i));
end
plot(d,x)
end
