function macierz=macierz_wartosci(strzelanie_komputera,index1,index2)
macierz_wywoluje_od=num2str([index1 index2]);
macierz=ones(2,2)*(-1);
    try
        macierz(1,1)=strzelanie_komputera(index1+1,index2);%bd wiedziec tylko o ewentualnym strzelaniu w tamtych miejscach
    end
    try
        macierz(1,2)=strzelanie_komputera(index1,index2+1);
    end
    try
        macierz(2,1)=strzelanie_komputera(index1-1,index2);
    end
    try
        macierz(2,2)=strzelanie_komputera(index1,index2-1);
    end
end