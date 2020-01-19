function varargout = statki_poczatek(varargin)
% STATKI_POCZATEK MATLAB code for statki_poczatek.fig
%      STATKI_POCZATEK, by itself, creates a new STATKI_POCZATEK or raises the existing
%      singleton*.
%
%      H = STATKI_POCZATEK returns the handle to a new STATKI_POCZATEK or the handle to
%      the existing singleton*.
%
%      STATKI_POCZATEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in STATKI_POCZATEK.M with the given input arguments.
%
%      STATKI_POCZATEK('Property','Value',...) creates a new STATKI_POCZATEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before statki_poczatek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to statki_poczatek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help statki_poczatek

% Last Modified by GUIDE v2.5 12-Jun-2017 21:02:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @statki_poczatek_OpeningFcn, ...
                   'gui_OutputFcn',  @statki_poczatek_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before statki_poczatek is made visible.
function statki_poczatek_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to statki_poczatek (see VARARGIN)

% Choose default command line output for statki_poczatek
handles.output = hObject;
handles.najpierw=0;
handles.komputer_moze_strzelac=0;
handles.ostatnie_indeksy3='0 0';
handles.ostatnie_indeksy2='0 0';
handles.ostatnie_indeksy='0 0';
axes(handles.axes1)
fill([0,0,10,10],[0,10,10,0],'w')
set(gca,'XTick',[])
xlabel('1         2         3         4         5         6         7         8         9         10')
set(gca,'YTick',[])
ylabel({'10',' ','9',' ','8',' ','7',' ','6',' ','5',' ','4',' ','3',' ','2',' ','1'})
hYLabel = get(gca,'ylabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')
hold on
axes(handles.axes2)
fill([0,0,10,10],[0,10,10,0],'w')
set(gca,'XTick',[])
xlabel('1         2         3         4         5         6         7         8         9         10')
set(gca,'YTick',[])
ylabel({'10',' ','9',' ','8',' ','7',' ','6',' ','5',' ','4',' ','3',' ','2',' ','1'})
hYLabel = get(gca,'ylabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')
hold on
axes(handles.axes3)
fill([0,0,10,10],[0,10,10,0],'w')
set(gca,'YTick',[])
ylabel({'10',' ','9',' ','8',' ','7',' ','6',' ','5',' ','4',' ','3',' ','2',' ','1'})
hYLabel = get(gca,'ylabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle')
set(gca,'XTick',[])
xlabel('1         2         3         4         5         6         7         8         9         10')
%axes equal
hold on
global z
global zz
global zzz
global zzzz
z=1;
zz=1;
zzz=1;
zzzz=1;
global wygral
wygral=0;


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes statki_poczatek wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = statki_poczatek_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in zrob_statki.
function zrob_statki_Callback(hObject, eventdata, handles)
% hObject    handle to zrob_statki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% setGlobalx(zrob_macierz_komputera)
% statki_komputera=getGlobalx
global statki_komputera
statki_komputera=zrob_macierz_komputera;
global strzelanie_komputera
strzelanie_komputera=zeros(10,10);
global strzelanie_gracza
strzelanie_gracza=zeros(10,10);
global statki_gracza
statki_gracza=zeros(10,10);
set(handles.zatopiony,'String','')
global z
z=1;
global zz
zz=1;
global zzz
zzz=1;
global zzzz
zzzz=1;
handles.najpierw=1;
set(handles.strzelaj_komputerze,'String','Strzelaj komputerze!')
set(handles.wpisuj_pozycje_1_maszt,'String','masz 4 takie statki')
set(handles.wpisuj_pozycje_2_maszt,'String','masz 3 takie statki')
set(handles.wpsiuj_pozycje3_maszt,'String','masz 2 takie statki')
set(handles.wpsiuj_pozycje_4_maszt,'String','masz 1 taki statek')
set(handles.gdzie_strzelasz,'String','Gdzie strzelasz')
set(handles.wylosuj_mi_statki,'String','wylosuj mi statki')
guidata(hObject, handles);

function wpisuj_pozycje_1_maszt_Callback(hObject, eventdata, handles)
% hObject    handle to wpisuj_pozycje_1_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global z
global statki_gracza
%global najpierw
if(handles.najpierw==1)
if(z<=4)
text=get(hObject,'String');%returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of wpisuj_pozycje_1_maszt as a double
text=sscanf(text,'%f');
a=text(1);
b=text(2);
if(0<a&a<=10&0<b&b<=10)
statki_gracza(a,b)=1;
axes(handles.axes3)
fill([b-1,b-1,b,b],[a-1,a,a,a-1],'k')
hold on
z=z+1;
handles.komputer_moze_strzelac=handles.komputer_moze_strzelac+1;
else
    set(hObject,'String','zle podane wspolrzedne')
end
else
    set(hObject,'String','wykorzysta³eœ ju¿!')
end
else
    set(hObject,'String','kliknij zrob statki!')
end
guidata(hObject, handles);

    

% --- Executes during object creation, after setting all properties.
function wpisuj_pozycje_1_maszt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpisuj_pozycje_1_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function gdzie_strzelasz_Callback(hObject, eventdata, handles)%gdzie strzelasz guzik
% hObject    handle to gdzie_strzelasz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gdzie_strzelasz as text
%        str2double(get(hObject,'String')) returns contents of gdzie_strzelasz as a double


% --- Executes during object creation, after setting all properties.
%global najpierw
global statki_komputera
global strzelanie_gracza
global wygral
if(handles.najpierw==1)
    if(wygral~=1)
text=get(hObject,'String');%returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of wpisuj_pozycje_1_maszt as a double
text=sscanf(text,'%f');
a=text(1);
b=text(2);
if(0<a&a<=10&0<b&b<=10)

if(statki_komputera(a,b)>0)
    axes(handles.axes2)
    fill([b-1,b-1,b,b],[a-1,a,a,a-1],'g')%jest statek
    strzelanie_gracza(a,b)=1;%nie wiem czy ta tablcia potrzebna
    statki_komputera(a,b)=-1;%odznaczamy ze tam juz moze byc ztaopiony, ze juz tam gracz strzelal
    if(1==sprawdz_zatopienie(statki_komputera,a,b))
        set(handles.zatopiony,'String','zatopiony!')
    else
        set(handles.zatopiony,'String','trafiony!')
    end
 
else
    axes(handles.axes2)
    fill([b-1,b-1,b,b],[a-1,a,a,a-1],'r')%nie ma statku
    set(handles.zatopiony,'String','pud³o!')
end
if(statki_komputera<=0)
    set(handles.zatopiony,'String','wygra³eœ')
    set(hObject,'String','koniec gry!')
    wygral=1;
end
else
    set(hObject,'String','Ÿle podane wspó³rzêdne')
end
    else
         set(hObject,'String','koniec gry!')
    end
else
    set(hObject,'String','kliknij zrob statki!')
end
guidata(hObject, handles);

function gdzie_strzelasz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gdzie_strzelasz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in strzelaj_komputerze.
function strzelaj_komputerze_Callback(hObject, eventdata, handles)
% hObject    handle to strzelaj_komputerze (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global strzelanie_komputera
global statki_gracza
global wygral
if(handles.najpierw==1)
if(handles.komputer_moze_strzelac==10)
set(handles.zatopiony,'String','')%dla gracza zaznacza zeby w okienku nic nie bylo
oznakowanie=get(handles.oznakowanie_czy_pudlo_moze_cos,'String');%co bylo ostatnio trafiony/zatopiony/pudlo
%indeksy=get(handles.ostatnie_indeksy,'String');
indeksy=handles.ostatnie_indeksy;
indeksy=sscanf(indeksy,'%f');
index1=indeksy(1);
index2=indeksy(2);
indeksy=handles.ostatnie_indeksy2;
indeksy=sscanf(indeksy,'%f');
index3=indeksy(1);
index4=indeksy(2);
indeksy=handles.ostatnie_indeksy3;
indeksy=sscanf(indeksy,'%f');
index5=indeksy(1);
index6=indeksy(2);
[a b]=strzelaj_komputerze2(strzelanie_komputera,statki_gracza,index1,index2,oznakowanie,index3,index4,index5,index6);
axes(handles.axes1)%te dane indeksy ktore masz nowe trzeba skonwetrowac do stringa potem umiescic w editboxie
if(statki_gracza(a,b)>0)%trafiles
    statki_gracza(a,b)=-1;%statek wystrzelony
    strzelanie_komputera(a,b)=1;
    spr1=sprawdz_zatopienie(statki_gracza,a,b);
    if(index1~=0&index2~=0)%%%%%
    spr2=sprawdz_zatopienie(statki_gracza,index1,index2);
    else
        spr2=1;
    end
    if(index3~=0&index4~=0)%%%%%%
    spr3=sprawdz_zatopienie(statki_gracza,index3,index4);
    else
        spr3=1;
    end
  
    fill([b-1,b-1,b,b],[a-1,a,a,a-1],'g')
    if(spr1==1)%czyli jezeli naokolo wydaje sie ok
        if(strcmp(oznakowanie,'pud³o')==1)%przyapdek dla pojedynczego stateczku dla neigo jak jest naokolo
            set(handles.oznakowanie_czy_pudlo_moze_cos,'String','zatopiony')
            strzelanie_komputera=zaznacz_sobie_naokolo_komputer_bd_zgadywac_lepiej(strzelanie_komputera,statki_gracza,a,b);
        end
        if(strcmp(oznakowanie,'zatopiony')==1)
          
            set(handles.oznakowanie_czy_pudlo_moze_cos,'String','zatopiony')
        end
        if(strcmp(oznakowanie,'trafiony')==1&spr2==1&spr3==1)%&spr3==1)%sprawdzmy czy to nie jest jakis duzy statek%to dopisane
            set(handles.oznakowanie_czy_pudlo_moze_cos,'String','zatopiony');%jak trafiony to naokolo tegos atku trzba postawic -1 zeby tam bez sensu nie strzelal
            if(index1~=0&index2~=0)               
            strzelanie_komputera=zaznacz_sobie_naokolo_komputer_bd_zgadywac_lepiej(strzelanie_komputera,statki_gracza,index1,index2);
            end
            if(index3~=0&index4~=0)
            strzelanie_komputera=zaznacz_sobie_naokolo_komputer_bd_zgadywac_lepiej(strzelanie_komputera,statki_gracza,index3,index4);
            end
            if(index5~=0&index6~=0)
            strzelanie_komputera=zaznacz_sobie_naokolo_komputer_bd_zgadywac_lepiej(strzelanie_komputera,statki_gracza,index5,index6);
            end
            strzelanie_komputera=zaznacz_sobie_naokolo_komputer_bd_zgadywac_lepiej(strzelanie_komputera,statki_gracza,a,b);

        end
        if(strcmp(oznakowanie,'trafiony')==1&spr2==0)%trafiony ale nie zatopiony
            set(handles.oznakowanie_czy_pudlo_moze_cos,'String','trafiony')
            handles.ostatnie_indeksy=num2str([a b]);
            handles.ostatnie_indeksy2=num2str([index1 index2]);
            handles.ostatnie_indeksy3=num2str([index3 index4]);
            tralal4=1;
        end
        %zaznacz sobei naokolo w strzelanie komputera zeby nie suzkal
    else%jest trafiony ale na pewno neie zatopiony
        set(handles.oznakowanie_czy_pudlo_moze_cos,'String','trafiony');
        handles.ostatnie_indeksy=num2str([a b]);
        handles.ostatnie_indeksy2=num2str([index1 index2]);
        handles.ostatnie_indeksy3=num2str([index3 index4]);
        tralal5=1;
        
    end
    %strzelanie_komputera=zaznacz_sobie_naokolo_komputer_bd_zgadywac_lepiej(strzelanie_komputera,statki_gracza,a,b)
else%nie trafiles
    strzelanie_komputera(a,b)=-1;%zaznacz sobei ze tu probowales
    statki_gracza(a,b)=-1;
    fill([b-1,b-1,b,b],[a-1,a,a,a-1],'r')%zaznacza na czerwono, bo nietrafione
    if(1==strcmp(oznakowanie,'trafiony'))%nie trafiles ale pamietaj ze wczesniej Cis ie udalo
        set(handles.oznakowanie_czy_pudlo_moze_cos,'String','trafiony');%wczesniej bylo trafione
        
    else
        set(handles.oznakowanie_czy_pudlo_moze_cos,'String','pud³o');%wczesniej nie bylo trafione
    end
        
end
if(statki_gracza<=0)
    wygral=1;
    set(handles.oznakowanie_czy_pudlo_moze_cos,'String','komputer wygra³!')
end
else
    set(hObject,'String','ustaw swoje statki!')
end
else
    set(hObject,'String','kliknij zrob statki!')
end
guidata(hObject, handles);




function zatopiony_Callback(hObject, eventdata, handles)
% hObject    handle to zatopiony (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zatopiony as text
%        str2double(get(hObject,'String')) returns contents of zatopiony as a double


% --- Executes during object creation, after setting all properties.
function zatopiony_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zatopiony (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
global statki_komputera
if(statki_komputera<=0)
    set(hObject,'String','wygra³eœ!')
end



function wpisuj_pozycje_2_maszt_Callback(hObject, eventdata, handles)
% hObject    handle to wpisuj_pozycje_2_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wpisuj_pozycje_2_maszt as text
%        str2double(get(hObject,'String')) returns contents of wpisuj_pozycje_2_maszt as a double
global statki_gracza
global zz
if(handles.najpierw==1)
if(zz<=6)
text=get(hObject,'String');%returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of wpisuj_pozycje_1_maszt as a double
text=sscanf(text,'%f');
a=text(1);
b=text(2);
if(0<a&a<=10&0<b&b<=10)
statki_gracza(a,b)=2;
axes(handles.axes3)
fill([b-1,b-1,b,b],[a-1,a,a,a-1],'k')
hold on
zz=zz+1;
handles.komputer_moze_strzelac=handles.komputer_moze_strzelac+1;
else
    set(hObject,'String','zle podane wspolrzedne')
end
else
    set(hObject,'String','wykorzysta³eœ ju¿!')
end
else
    set(hObject,'String','kliknij zrob statki')
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function wpisuj_pozycje_2_maszt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpisuj_pozycje_2_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wpsiuj_pozycje3_maszt_Callback(hObject, eventdata, handles)
% hObject    handle to wpsiuj_pozycje3_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wpsiuj_pozycje3_maszt as text
%        str2double(get(hObject,'String')) returns contents of wpsiuj_pozycje3_maszt as a double
global statki_gracza
global zzz
if(handles.najpierw==1)
if(zzz<=6)
text=get(hObject,'String');%returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of wpisuj_pozycje_1_maszt as a double
text=sscanf(text,'%f');
a=text(1);
b=text(2);
if(a>0&a<=10&b>0&b<=10)
statki_gracza(a,b)=3;
axes(handles.axes3)
fill([b-1,b-1,b,b],[a-1,a,a,a-1],'k')
hold on
zzz=zzz+1;
handles.komputer_moze_strzelac=handles.komputer_moze_strzelac+1;
else
    set(hObject,'String','Ÿle podane wspó³rzêdne')
end
else
    set(hObject,'String','wykorzysta³eœ ju¿!')
end
else
    set(hObject,'String','kliknij zrob statki!')
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function wpsiuj_pozycje3_maszt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpsiuj_pozycje3_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wpsiuj_pozycje_4_maszt_Callback(hObject, eventdata, handles)
% hObject    handle to wpsiuj_pozycje_4_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wpsiuj_pozycje_4_maszt as text
%        str2double(get(hObject,'String')) returns contents of wpsiuj_pozycje_4_maszt as a double
global statki_gracza
global zzzz
if(handles.najpierw==1)
if(zzzz<=4)
text=get(hObject,'String');%returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of wpisuj_pozycje_1_maszt as a double
text=sscanf(text,'%f');
a=text(1);
b=text(2);
if(a>0&a<10&b>0&b<10)
axes(handles.axes3)
fill([b-1,b-1,b,b],[a-1,a,a,a-1],'k')
hold on
statki_gracza(a,b)=4
zzzz=zzzz+1;
handles.komputer_moze_strzelac=handles.komputer_moze_strzelac+1;
else
    set(hObject,'String','Ÿle podane wspó³rzêdne')
end
else
    set(hObject,'String','wykorzysta³eœ ju¿!')
end
else
    set(hObject,'String','kliknij zrob statki!')
end
if(handles.komputer_moze_strzelac==10)
    set(handles.strzelaj_komputerze,'String','Strzelaj komputerze!')
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function wpsiuj_pozycje_4_maszt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wpsiuj_pozycje_4_maszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function oznakowanie_czy_pudlo_moze_cos_Callback(hObject, eventdata, handles)
% hObject    handle to oznakowanie_czy_pudlo_moze_cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of oznakowanie_czy_pudlo_moze_cos as text
%        str2double(get(hObject,'String')) returns contents of oznakowanie_czy_pudlo_moze_cos as a double


% --- Executes during object creation, after setting all properties.

function oznakowanie_czy_pudlo_moze_cos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to oznakowanie_czy_pudlo_moze_cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
% global statki_gracza
% global zaczeto gre
% if(statki_gracza<=0&zaczeto_gre==1)
%     set(hObject,'String','komputer wygra³!')
% end



function ostatnie_indeksy_Callback(hObject, eventdata, handles)
% hObject    handle to ostatnie_indeksy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ostatnie_indeksy as text
%        str2double(get(hObject,'String')) returns contents of ostatnie_indeksy as a double


% --- Executes during object creation, after setting all properties.
function ostatnie_indeksy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ostatnie_indeksy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in wylosuj_mi_statki.
function wylosuj_mi_statki_Callback(hObject, eventdata, handles)
% hObject    handle to wylosuj_mi_statki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global statki_gracza
global zaczeto_gre
zaczeto_gre=1;
global z
global zz
global zzz
global zzzz
if(z~=1|zz~=1|zzz~=1|zzzz~=1)
    set(hObject,'String','nie mozesz ju¿ losowaæ!')
else

z=40;
zz=z;
zzz=z;
zzzz=z;
if(handles.najpierw==1)
statki_gracza=zrob_macierz_komputera;
for a=1:10
    for b=1:10
        if(statki_gracza(a,b)>0)
            axes(handles.axes3)
            fill([b-1,b-1,b,b],[a-1,a,a,a-1],'k')
            hold on
        end
    end
end
handles.komputer_moze_strzelac=10;
else
    set(hObject,'String','kliknij zrob statki!')
end
    guidata(hObject, handles);
    set(handles.strzelaj_komputerze,'String','strzelaj komputerze!')
end




function ostatnie_indeksy2_Callback(hObject, eventdata, handles)
% hObject    handle to ostatnie_indeksy2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ostatnie_indeksy2 as text
%        str2double(get(hObject,'String')) returns contents of ostatnie_indeksy2 as a double


% --- Executes during object creation, after setting all properties.
function ostatnie_indeksy2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ostatnie_indeksy2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ostatnie_indeksy3_Callback(hObject, eventdata, handles)
% hObject    handle to ostatnie_indeksy3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ostatnie_indeksy3 as text
%        str2double(get(hObject,'String')) returns contents of ostatnie_indeksy3 as a double


% --- Executes during object creation, after setting all properties.
function ostatnie_indeksy3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ostatnie_indeksy3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% function wpisuj_pozycje_2_maszt_Callback(hObject, eventdata, handles)
% % hObject    handle to wpisuj_pozycje_2_maszt (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% 
% % Hints: get(hObject,'String') returns contents of wpisuj_pozycje_2_maszt as text
% %        str2double(get(hObject,'String')) returns contents of wpisuj_pozycje_2_maszt as a double
