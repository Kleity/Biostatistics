function Relativa
format rat
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
inf=min(m);
sup=max(m);
rango=sup-inf;
int=rango/10;
int=round(int);
a=inf;
b=inf+int;
disp('          Intevalo                F.Relativa ');
for i=1:10
    f=0;
    for j=1:length(d);
        if m(j)<=b && m(j)>=a
            f=f+1;
        end
    end
disp([a,b,f/length(d)]);
a=b+1;
b=a+int;
end
end
