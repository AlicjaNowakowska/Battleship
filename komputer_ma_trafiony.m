function [c d]=komputer_ma_trafiony(a,b,strzelanie_komputera,index1,index2,index3,index4) %index1 index2 ostatnie indesky w trafieniu
%if(strzelanie_komputera(index1,index2)==1)%czyli ostatnio trafi³eœ warunek
%zawsze spelniony indeksy sa zapamietywne tylko i wylacznie gdy trafil
    %powpisujmy wrtosci do macierzy
    macierz=macierz_wartosci(strzelanie_komputera,a,b);
    %jezeli gdzies tam jest 1 tzn.,ze strzelil statek wiekszy niz 1
    strzelil_wiekszy_niz2=0;
    for i=1:2
        for j=1:2
            if(macierz(i,j)==1)
                strzelil_wiekszy_niz2=1;
                m=i;
                n=j;
            end
        end
    end
    %ustalil ten indeks sprawdzeni nowa zmienna
    przeszlo=0;
    if(strzelil_wiekszy_niz2==1)
        if(m==1&n==1)%tu wyczajsz gdzie powinnien strzelac 
            try
                c=a-1;
                d=b;
                if(strzelanie_komputera(c,d)==0)
                    muu=3;
                end
           
            catch%jak wywyali blad czyli wyszlo sie poza macierz
               [c d]=komputer_ma_trafiony(a+1,b,strzelanie_komputera,index1,index2,index3,index4);
               am=1;
               przeszlo=1;
            end
        end
        if(m==1&n==2)
            try
%             c=index1
%             d=index2-1
            
                c=a;
                d=b-1;
                przeszlo=1;
                
                if(strzelanie_komputera(c,d)==0)
                    muuu=3;
                end
            catch
                [c d]=komputer_ma_trafiony(a,b+1,strzelanie_komputera,index1,index2,index3,index4);
                am=1;
                przeszlo=1;
            end
        end
       
        if(m==2&n==1)
            try
%             c=index1+1
%             d=index2
            
                c=a+1;
                d=b;
                przeszlo=1;
                if(strzelanie_komputera(c,d)==0)
                    muu=3;
                end
            
            catch
                [c d]=komputer_ma_trafiony(a-1,b,strzelanie_komputera,index1,index2,index3,index4);
                am=1;
                przeszlo=1;
            end
        end
        if(m==2&n==2)
            try
%             c=index1
%             d=index2+1
            
                c=a;
                d=b+1;
                przeszlo=1;
                if(strzelanie_komputera(c,d)==0)
                    muu=3;
                end
        
            catch
                [c d]=komputer_ma_trafiony(a,b-1,strzelanie_komputera,index1,index2,index3,index4);
                przeszlo=1;
                am=1;
            end
        end
%         if(przeszlo==0)%tzn w
%         end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     else%jezeli masz tylko jeden strzelony porsta spraw wez to co obok gdzies
        for i=1:2
            for j=1:2
                if(macierz(i,j)==0)%tam nie strzelales
                    m=i;
                    n=j;
                end
            end
        end
        if(m==1&n==1)
            c=a+1;
            d=b;
        end
        if(m==1&n==2)
            c=a;
            d=b+1;
        end
        if(m==2&n==1)
            c=a-1;
            d=b;
        end
        if(m==2&&n==2)
            c=a;
            d=b-1;
        end
    end 
    if(macierz<0)
        am=1;
        [c2 d2]=komputer_ma_trafiony(index1,index2,strzelanie_komputera,index3,index4,index3,index4);
        c=c2;
        d=d2;
    end
%     elseif(przeszlo==0)
%         [c d]=strzelanie_komputera(index1,index2,strzelanie_komputera,index1,index2)
%     end
%     if(strzelanie_komputera(c,d)==0)
%         [c d]=[c d]
%         break
%     end
    if(strzelanie_komputera(c,d)~=0)
        am=1; 
        [c1 d1]=komputer_ma_trafiony(index1,index2,strzelanie_komputera,index3,index4,index3,index4);
        c=c1;
        d=d1;
        
    end
    am2=1;
end