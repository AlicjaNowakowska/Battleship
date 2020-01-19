function [c d]=strzelaj_komputerze2(strzelanie_komputera,statki_gracza,index1,index2,oznakowanie,index3,index4,index5,index6)
if(strcmp(oznakowanie,'pud³o')==1)
    [c d]=losuj1(strzelanie_komputera);
end
if(strcmp(oznakowanie,'zatopiony')==1)
    [c d]=losuj1(strzelanie_komputera);
end
if(strcmp(oznakowanie,'trafiony')==1)
    [c d]=komputer_ma_trafiony(index1,index2,strzelanie_komputera,index3,index4,index5,index6);
%     try
%         c=index1+1;
%         d=index2;
%     catch
%         c=index1-1;
%         d=index2;
%     end
%     m=[index1 index1 index1+1 index1-1];
%     n=[index2+1 index2-1 index2 index2];
%     i=1;
%     while(strzelanie_komputera(c,d)~=0)%tzn juz tu strzelal
%         try
%             c=m(i);
%             d=n(i);
%         end
%         i=i+1;
%     end
        %jezeli dojechales do konca osi i dalej masz trafiony to wez swoja
        %planasze strzalow i wroc do tego pierwszego strzalu trafionego i
        %strzelaj wokol tamtego i jak masz wiecej niz jeden w rzadku to juz
        %wiesz w kotra strone masz sie kierowac albo jeœ³i masz pud³o w osi
%     while(warunek==1)%zeby dobrze wylosowal i trzeba pamietac zeby potem naokolo zatopionego statku pisa³ sobie -1
%         
%         if(a==0)
%             a=1;
%         end
%         if(a==5)
%         a=4;
%         end
%         b={'gora','dol','prawo','lewo'};%gora dol prawo lewo
%         b=b(a)
%     end
end
    
    
    
end
    