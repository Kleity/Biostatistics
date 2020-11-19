function[Media]=media
format short
Archivo=fullfile('C:\Users\Telmex\Documents\MATLAB\bioestadística\dataset_anios.txt');
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
suma=0;
for i=1:n-1
    suma=suma+m(i);
end
Media=suma/i;
end