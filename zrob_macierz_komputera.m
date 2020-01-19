function statki_komputera=zrob_macierz_komputera
statki_komputera=zeros(10,10);%10 10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:4
    for j=i:4
        statki_komputera=losuj2(statki_komputera,i);
    end
end
%strzelanie_komputera=zeros(10,10)
 
 
end