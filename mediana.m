function mediana
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
    a=size(m);
if mod(a(1),2)==0
    mediana=(d(a(1)/2)+d((a(1)/2)+1))/2;
else
    mediana=d((a(1)+1)/2);
end
mediana

end
