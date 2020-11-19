function [Varianza]= varianza
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
    s=sort(m);
    i=1;k=1;
    a=size(m);
while i<=a(1)
    l=1;
    for j=1:size(s)
    if i~=j && i<j
        if s(i)==s(j)
            l=l+1;
        end
    end
    end
    d(k)=s(i);
    f(k)=l;
    i=i+l;k=k+1;
end
suma=0;sum=0;abs=0;
for i=1:a(1)
    suma=suma+m(i);
end
Media=suma/i;
for i=1:length(d)
    sum=sum+(f(i)*((d(i)-Media)^2));
    abs=abs+f(i);
end
Varianza=sum/(abs-1);

end