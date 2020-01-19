function warunek=sprawdz_zatopienie(macierz,index1,index2)
    index1=index1;
    index2=index2;
    warunek=0;
    if(index1==1&index2==1)
        if(macierz(1,2)<=0&macierz(2,1)<=0)
            warunek=1;
        end
    end
    if(index1==1&index2==10)
        if(macierz(1,9)<=0&macierz(2,10)<=0)
            warunek=1;
        end
    end
    if(index1==10&index2==1)
        if(macierz(10,2)<=0&macierz(9,1)<=0)
            warunek=1;
        end
    end
    if(index1==10&index2==10)
        if(macierz(10,9)<=0&macierz(9,10)<=0)
            warunek=1;
        end
    end
    %%%%%%%%%%%%%%%%%%%%%%
    if(index1==1&index2<=9&2<=index2)%pierwszy wiersz
        if(macierz(index1,index2+1)<=0)
            if(macierz(index1,index2-1)<=0)
                if(macierz(index1+1,index2)<=0)
                    warunek=1;
                end
            end
        end
    end
    
    if(index1==10&index2<=9&2<=index2)%ostatni wiersz
        if(macierz(index1,index2+1)<=0&macierz(index1,index2-1)<=0)
            if(macierz(index1-1,index2)<=0)
                warunek=1;
            end
        end
    end
    
    if(index2==1&index1>=2&index1<=9)
        if(macierz(index1,index2+1)<=0&macierz(index1-1,index2)<=0)
            if(macierz(index1+1,index2)<=0)
                warunek=1;
            end
        end
    end
    
    if(index2==10&index1>=2&index1<=9)
        if(macierz(index1-1,index2)<=0&macierz(index1+1,index2)<=0)
            if(macierz(index1,index2-1)<=0)
                warunek=1;
            end
        end
    end
    
    if(index1>=2&index2<=9&index1<=9&index2>=2)
        if(macierz(index1,index2+1)<=0&macierz(index1,index2-1)<=0)
            if(macierz(index1-1,index2)<=0&macierz(index1+1,index2)<=0)
                warunek=1;
            end
        end
    end
    
    
    
    
                
        
        
            
            
%sprawdzamy naokolo od wylosowanego punktu
 
end
 
 
