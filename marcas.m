function marcas
format short
Archivo=fullfile('C:\Users\leonardo\Documents\MATLAB\bioestadistica\prueba.txt');
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
inf=min(m);
sup=max(m);
rango=sup-inf;
int=rango/10;
int=round(int);
a=inf;
b=inf+int;
mar=(b+a)/2;
disp('        Intevalo        Marca   ');
for i=1:10
disp([a,b,mar]);
a=b+1;
b=a+int;
mar=(b+a)/2;
end
end