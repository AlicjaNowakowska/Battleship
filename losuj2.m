function macierz2=losuj2(macierz,dlugosc)
kontynuuj=1;
while(kontynuuj==1)
    kontynuuj=0;
    [a b]=losuj1(macierz);
    kierunki={'prawo','lewo','gora','dol'};
    k=round((4-1)*rand(1,1)+1);%kierunek
    if(k==0)
        k=1;
    end
    if(k==5)
        k=4;
    end
    k=kierunki{k};
    if(1==strcmp('prawo',k))
        if(b+dlugosc<=10)%nie wystaje
            for i=2:dlugosc
                if(macierz(a,b+i-1)~=0)%nie zajmuje
                    kontynuuj=1;
                end
            end
        else
            kontynuuj=1;
        end
    end
    if(1==strcmp('lewo',k))
        if(b-dlugosc>=0)%czy nie wychodiz poza plansze
            for i=2:dlugosc
                if(macierz(a,b-i+1)~=0)
                    kontynuuj=1;
                end
            end
        else
            kontynuuj=1;  
        end
    end
    if(1==strcmp('dol',k))
        if(a+dlugosc<=10)
            for i=2:dlugosc
                if(macierz(a+i-1,b)~=0)
                    kontynuuj=1;
                end
            end   
        else
            kontynuuj=1;
        end
    end
    if(1==strcmp('gora',k))
        if(a-dlugosc>=0)
            for i=2:dlugosc
                if(macierz(a-i+1,b)~=0)
                    kontynuuj=1;
                end
            end
        else
            kontynuuj=1;
        end
    end
end

%%%%%%ma ustalon a,b i wie ze wejdzie

macierz(a,b)=dlugosc;
if(1==strcmp('lewo',k))
    for i=2:dlugosc
        macierz(a,b-i+1)=dlugosc;
    end
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
    if(b-dlugosc>=1)
        macierz(a,b-dlugosc)=-1;%niestykanie
    end
    if(b+1<=10)
        macierz(a,b+1)=-1;
    end
    if(a+1<=10)
        macierz(a+1,b)=-1;
    end
    if(a-1>=1)
        macierz(a-1,b)=-1;
    end
    for i=2:dlugosc
        if(b-i+1>=1&b-i+1<=10)
            if(a+1<=10)
                macierz(a+1,b-i+1)=-1;
            end
            if(a-1<=10&a-1>=1)
                macierz(a-1,b-i+1)=-1;
            end
        end
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
end
if(1==strcmp(k,'prawo'))
    for i=2:dlugosc
        macierz(a,b+i-1)=dlugosc;
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if(b+dlugosc-1>=1&b+dlugosc<=10)
        macierz(a,b+dlugosc)=-1;%niestykanie
    end
    if(b-1<=10&b-1>=1)
        macierz(a,b-1)=-1;
    end
    if(a+1<=10)
        macierz(a+1,b)=-1;
    end
    if(a-1>=1)
        macierz(a-1,b)=-1;
    end
    for i=2:dlugosc
        if(b+i-1>=1&b+i-1<=10)
            if(a+1<=10)
                macierz(a+1,b+i-1)=-1;
            end
            if(a-1<=10&a-1>=1)
                macierz(a-1,b+i-1)=-1;
            end
        end
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
if(1==strcmp('dol',k))
    for i=2:dlugosc
        macierz(a+i-1,b)=dlugosc;
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if(a-1>=1)
        macierz(a-1,b)=-1;%niestykanie
    end
    if(a+dlugosc<=10)
        macierz(a+dlugosc,b)=-1;
    end
    if(b-1>=1)
        macierz(a,b-1)=-1;
    end
    if(b+1<=10)
        macierz(a,b+1)=-1;
    end
    for i=2:dlugosc
        if(a+i-1>=1&a+i-1<=10)
            if(b+1<=10)
                macierz(a+i-1,b+1)=-1;
            end
            if(b-1<=10&b-1>=1)
                macierz(a+i-1,b-1)=-1;
            end
        end
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
end
if(1==strcmp('gora',k))
    for i=2:dlugosc
        macierz(a-i+1,b)=dlugosc;
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%555
    if(a+1>=1&a+1<=10)
        macierz(a+1,b)=-1;%niestykanie
    end
    if(a-dlugosc<=10&a-dlugosc>=1)
        macierz(a-dlugosc,b)=-1;
    end
    if(b+1<=10)
        macierz(a,b+1)=-1;
    end
    if(b-1>=1)
        macierz(a,b-1)=-1;
    end
    
    for i=2:dlugosc
        if(a-i+1>=1&a-i+1<=10)
            if(b+1<=10)
                macierz(a-i+1,b+1)=-1;
            end
            if(b-1<=10&b-1>=1)
                macierz(a-i+1,b-1)=-1;
            end
        end
    end
    %%%%%%%%%%%%%%%%%
end
%po zaznaczamy punkty w ktorych juz nei mzoe bo by sie stykalo


macierz2=macierz;


end