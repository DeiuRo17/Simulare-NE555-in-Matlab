function functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h,kl)

%creearea figurii 3 cu configuratii NE555
fig3 = figure('NumberTitle', 'off', 'Name', 'NE555 Configuratii');
set(gcf, 'Position', get(0, 'Screensize'));



%Circuit Bistabil

t = imread('poza.png');
ax_image4 = axes('Position', [0 0.1 0.25 0.4]); 
imshow(t, 'Parent', ax_image4);



%Circuit Monostabil

R = imread('poza2taiata.png');
ax_image5 = axes('Position', [0.5 0.2 0.25 0.3]); 
imshow(R, 'Parent', ax_image5);



%Output Monostabil

Z = imread('TOC.png');
ax_image8 = axes('Position', [0.74 0.06 0.25 0.45]); 
imshow(Z, 'Parent', ax_image8);



%Formula Monostabil

O = imread('TTOC.png');
ax_image9 = axes('Position', [0.62 0.06 0.1 0.1]); 
imshow(O, 'Parent', ax_image9);



%Linie Verticala

lineX = 0.5; % Poziția liniei verticale (modificați după necesități)
annotation(fig3, 'line', [lineX, lineX], [0, 1], 'Color', 'k', 'LineWidth', 2);



%Formule Bistabil

L = imread('formule.png');
ax_image6 = axes('Position', [0.25 0.08 0.15 0.15]); % Modificați valorile pentru a ajusta poziția și dimensiunile axei
imshow(L, 'Parent', ax_image6);



%Imagine Bistabil

J = imread('OC.png');
ax_image7 = axes('Position', [0.23 0.24 0.25 0.25]); % Modificați valorile pentru a ajusta poziția și dimensiunile axei
imshow(J, 'Parent', ax_image7);

KO = imread('DUTY.png');
ax_image8 = axes('Position', [0.01 0.0 0.2 0.14]); % Modificați valorile pentru a ajusta poziția și dimensiunile axei
imshow(KO, 'Parent', ax_image8);

%Titul Bistabil

annotation(fig3, 'textbox', [0.2, 0.7, 0.95, 0.3], 'String', ...
    [' Circuit Astabil', newline...
    ], 'FontSize', 17, 'FitBoxToText', 'on','Interpreter', 'latex');



%Teorie Bistsabil

annotation(fig3, 'textbox', [0.02, 0.6, 1, 0.3], 'String', ...
    [' Timer IC 555 poate fi folosit cu câteva componente simple' newline...
    ' pentru a construi un circuit astabil care produce o „undă pătrată".' newline ...
    ' Aceasta este o formă de undă digitală cu tranziții ascuțite între scăzut (0V)' newline...
    ' și ridicat (+Vs), duratele stărilor scăzute și ridicate pot fi diferite.' newline...
    ' Circuitul este numit astable deoarece nu este stabil în nicio stare:' newline...
    ' ieșirea se schimbă continuu între „scăzut și „înalt".' newline...
    'Perioada de timp (T) a undei pătrate este timpul pentru un ciclu complet,' newline...
    ' dar adesea este mai bine să luăm în considerare frecvența (f)' newline... 
    ', care este numărul de cicluri pe secundă.' newline...
    'Alegeți R1 pentru a oferi perioada de timp de care aveți nevoie. ' newline...
    'R1 ar trebui să fie în intervalul 1kohm până la 1Mohm,' newline...
    'deci utilizați un rezistor fix de cel puțin 1kohm în serie dacă R1 este variabil.'
    ], 'FontSize', 17, 'FitBoxToText', 'on','Interpreter', 'latex');



%Titlu Monostabil

annotation(fig3, 'textbox', [0.69, 0.7, 0.95, 0.3], 'String', ...
    [' Circuit Monostabil', newline...
    ], 'FontSize', 17, 'FitBoxToText', 'on','Interpreter', 'latex');



%Teorie Monostabil

annotation(fig3, 'textbox', [0.55, 0.5, 1, 0.4], 'String', ...
    [' Timer IC 555 poate fi folosit cu câteva componente simple ' newline...
    'pentru a construi un circuit monostabil care produce un singur impuls' newline...
    ' de ieșire atunci când este declanșat. Se numește monostabil deoarece ' newline...
    ' este stabil într-o singură stare: „ieșire scăzută". ' newline...
    'Starea „ieșire ridicată" este temporară.' newline...
    'Durata impulsului se numește perioada de timp (T) și aceasta ' newline...
    'este determinată de rezistența R1 și condensatorul C1.' newline...
    ' Alegerea R1 și C1 .Alegeți mai întâi C1 pentru că' newline...
    ' sunt relativ puține valori disponibile.Alegeți R1 pentru a oferi' newline...
    ' perioada de timp de care aveți nevoie. R1 ar trebui să fie în intervalul' newline...
    ' 1kohm până la 1Mohm, deci utilizați un rezistor fix de cel puțin 1kohm' newline...
    ' în serie dacă R1 este variabil.'
    ], 'FontSize', 16, 'FitBoxToText', 'on','Interpreter', 'latex');



%Butoane intoarcere pagini

uicontrol("Style","pushbutton",...
    "String",'Inchideti Pagina',...
    "Units","normalized",...
    "Position",[0.4 0.12 0.1 0.07], ...
    "Callback","close")

uicontrol("Style","pushbutton",...
        "String","Teorie NE555",...
        "Units","normalized",...
        "Position",[0.5 0.12 0.1 0.07],...
        "Callback",'m=0,h=0,k=1,close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h)')

uicontrol("Style","pushbutton",...
    "String",'Simulare NE555',...
    "Units","normalized",...
    "Position",[0.4 0.03 0.2 0.07], ...
    "Callback",'m=1,h=0,k=0,close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h),buton_semnale')



%creearea figurei 2 cu Teorie NE555

   fig2=figure('NumberTitle','off','Name','NE555 Teorie');
set(gcf, 'Position', get(0, 'Screensize'));



%Afisare pagina Teorie poza de sus 

y = imread('poza4.png');
ax_image3 = axes('Position', [0.65 0.2 0.3 0.35]); % Modificați valorile pentru a ajusta poziția și dimensiunile axei
imshow(y, 'Parent', ax_image3);



%Afisare pagina Teroie poza de jos

l = imread('poza3.png');
ax_image2 = axes('Position', [0.65 0.6  0.3 0.35]); % Modificați valorile pentru a ajusta poziția și dimensiunile axei
imshow(l, 'Parent', ax_image2);


%Teorie Ne555

annotation(fig2, 'textbox', [0.05, 0.2, 0.1, 0.8], 'String', ...
    sprintf([' Temporizatorul 555 cu 8 pini trebuie să fie unul dintre cele mai utile circuite integrate realizate vreodată' newline ...
    'și este folosit în multe proiecte. Cu doar câteva componente externe ' newline ...
    'poate fi folosit pentru a construi multe circuite, nu toate implică sincronizare!' newline ...
    'Alimentare 555 (pinii 1 și 8) ' newline ...
    'Temporizatorul 555 poate fi utilizat cu o tensiune de alimentare (Vs) ' newline ...
    'în intervalul 4,5V până la 15V  (18V este maximul absolut).' newline ...
    'Pinul 1 se conectează la 0V. Pinul 8 se conectează la sursa pozitivă +Vs.' newline ...
    '555 intrare de declanșare (pin 2)' newline...
    'Când este mai mică de 1/3 Vs („activ scăzut"),aceasta face ieșirea ridicată (+Vs). ' newline...
    'Are o impedanță de intrare mare de cel puțin 2 Mohm.' newline ...
    ' Monitorizează descărcarea condensatorului de temporizare într-un circuit astable.' newline...
    '555 intrare de control (pin 5)' newline...
    'Aceasta poate fi folosită pentru a regla tensiunea de prag ' newline...
    ' care este setată intern la 2/3 Vs. De obicei, această funcție nu este necesară ' newline...
    ' și intrarea de control este adesea lăsată neconectată.' newline... 
    ' Dacă zgomotul electric este probabil să fie o problemă, un condensator de 0,01µF poate fi conectat ' newline...
    ' între intrarea de control și 0V pentru a oferi o anumită protecție.' newline...
    ' Intrare prag 555 (pin 6)' newline...
    ' Când este mai mare de 2/3 Vs („activ ridicat"), aceasta face ieșirea scăzută (0V).' newline...
    ' Are o impedanță mare de intrare de aproximativ 10 Mohm.' newline...
    ' Monitorizează încărcarea condensatorului de temporizare în circuite astable și monostabile.' newline...
    ' cu condiția ca intrarea de declanșare să fie mai mare de 1/3 Vs,' newline...
    ' în caz contrar, intrarea de declanșare va depăși intrarea de prag și va menține ieșirea ridicată (+Vs).' newline...
    '555 de descărcare (pin 7)' newline...
    'Când ieșirea 555 (pin 3) este scăzută, pinul de descărcare este conectat la 0V intern.' newline...
    ' Funcția sa este de a descărca condensatorul de sincronizare în circuite astable și monostabile.' newline...
    '555 intrare de resetare (pin 4)' newline...
    'Când este mai mică de aproximativ 0,7 V („activ scăzut"), aceasta face ieșirea scăzută (0V)' newline...
    ', suprascriind celelalte intrări. Când nu este necesar, ar trebui să fie conectat la +Vs.' newline...
    ' Are o impedanță de intrare de aproximativ 10 kohm.'
    ]), 'FontSize', 18, 'FitBoxToText', 'on','Interpreter', 'latex');




%Butoane interconexiune pagini

uicontrol("Style","pushbutton",...
    "String",'Inchideti Pagina',...
    "Units","normalized",...
    "Position",[0.70 0.12 0.1 0.07], ...
    "Callback","close")

uicontrol("Style","pushbutton",...
    "String",'Pagina Configuratii NE555',...
    "Units","normalized",...
    "Position",[0.8 0.12 0.1 0.07],...
 "Callback",'h=1,close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h)')
uicontrol("Style","pushbutton",...
    "String",'Simulare NE555',...
    "Units","normalized",...
    "Position",[0.70 0.03 0.2 0.07], ...
    "Callback",'m=1,close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h); buton_semnale;')



%Creare Figura Simulare NE555

fig=figure('NumberTitle','off','Name','NE555 Simulare','Visible','off',...
    "Tag","fereastra");
   set(gcf, 'Position', get(0, 'Screensize'));


%Setare minim si maxim pt. Slider

minims=1;
maxims=10;



%Popup meniu

pop=uicontrol("Style","popupmenu",...
    "Units","normalized",...
    "Value",1,...
    "String"," Astabil | Monostabil ",...
    "Position",[0.23 0.79 0.1 0.15],...
    "Callback",'z=get(gco,''Value''),close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h),buton_semnale;') ; 



%setare butoanelor pentru interconexiune

    if h == 1
        set(fig2, 'Visible', 'off')
        set(fig, 'Visible', 'off')
        set(fig3, 'Visible', 'on')
    elseif m == 1
        set(fig2, 'Visible', 'off')
        set(fig, 'Visible', 'on')
        set(fig3, 'Visible', 'off')
      
    else
        set(fig2, 'Visible', 'on')
        set(fig, 'Visible', 'off')
        set(fig3, 'Visible', 'off')
    end
    



%Intrade in caz Astabil
 j = uipanel("Units","normalized" ,...
      "Position",[0.05 0.6 0.15 0.3]);
 
if z==1

    set(pop,'value',1)
    
    %Interconexiune pagini
    uicontrol("Style","pushbutton",...
        "String","Teorie NE555",...
        "Units","normalized",...
        "Position",[0.23 0.75 0.1 0.04],...
        "Callback",'m=0,close,functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h)')

    uicontrol("Style","pushbutton",...
    "String",'Pagina Configuratii NE555',...
    "Units","normalized",...
    "Position",[0.23 0.7 0.1 0.04],...
    "Callback",'h=1,close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h)')

    uicontrol("Style","pushbutton",...
    "String",'Inchideti Pagina',...
    "Units","normalized",...
    "Position",[0.23 0.65 0.1 0.04], ...
    "Callback","close")




    % UI Controls pentru valorile componentelor
    uicontrol("Style","text",...
        "Units","normalized",...
        "String","Valorile Componentelor",...
        "Position",[0.07 0.9 0.1 0.05],...
        "FontSize",16)

% UI Controls pentru valorile componentelor
    uicontrol("Style","text",...
        "Units","normalized",...
        "String","Parametrii de Iesire",...
        "Position",[0.37 0.9 0.1 0.05],...
        "FontSize",16)


% Ui Control pentru valorile rezistentei R1
    uicontrol("Style","text",...
        "String","R1",...
        "Units","normalized",...
        "Position",[0.1 0.8 0.2 0.1],...
    "Parent",j)

 BR1=   uicontrol("Style","edit",...
        "String",r1,...
        "Units","normalized",...
        "Position",[0.4 0.8 0.2 0.1],...
        "Tag","rezistenta1",...
    "Callback",'buton_semnale',...
    "Parent",j);

Bk=uicontrol("Style","popupmenu",...
        "String","Ω | KΩ | MΩ",...
        "Units","normalized",...
        "Tag","popu",...
        "Position",[0.7 0.8 0.2 0.1],...
    "Parent",j,...
    "Value",1,...
    "Callback",'buton_semnale' )

  
 if r1 > 100
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end

  if r1 <1
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end
 if r1 == 0
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end
% Ui Control pentru valorile rezistentei R2
    uicontrol("Style","text",...
        "String","R2",...
        "Units","normalized",...
        "Position",[0.1 0.6 0.2 0.1],...
    "Parent",j)

   BR2= uicontrol("Style","edit",...
        "String",r2,...
        "Units","normalized",...
        "Position",[0.4 0.6 0.2 0.1],...
        "Tag","rezistenta2",...
    "Callback",'buton_semnale',...
    "Parent",j);
   
Bk2=uicontrol("Style","popupmenu",...
        "String","Ω | KΩ | MΩ",...
        "Units","normalized",...
        "Tag","popu2",...
        "Position",[0.7 0.6 0.2 0.1],...
    "Parent",j,...
    "Value",1,...
    "Callback",'buton_semnale' )


 if r2 > 100
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end
 
  if r2 <1
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end

 if r1 == 0
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end
    % Ui Control pentru valorile Condensatorului C
    uicontrol("Style","text",...
        "String","C",...
        "Units","normalized",...
        "Position",[0.1 0.4 0.2 0.1],...
    "Parent",j)

   BC= uicontrol("Style","edit",...
        "String",c,...
        "Units","normalized",...
        "Position",[0.4 0.4 0.2 0.1],...
        "Tag","condensator",...
    "Callback",'buton_semnale',...
    "Parent",j);

BC=uicontrol("Style","pop",...
         "String","F | mF | μF | nF",...
        "Units","normalized",...
        "Position",[0.7 0.4 0.2 0.1],...
        "Tag","popu3",...
    "Parent",j,...
    "Value",1,...
    "Callback",'buton_semnale' )



    % Ui Control pentru valorile Tensiunii VCC
    uicontrol("Style","text",...
        "String","VCC",...
        "Units","normalized",...
        "Position",[0.1 0.2 0.2 0.1],...
    "Parent",j)

    BP=uicontrol("Style","edit",...
        "String",VCC,...
        "Units","normalized",...
        "Position",[0.4 0.2 0.2 0.1],...
    "Parent",j,...
        "Tag","tensiune",...
    "Callback",'buton_semnale');

      Bro=uicontrol("Style","popupmenu",...
        "String","[V]",...
        "Units","normalized",...
        "Position",[0.7 0.2 0.2 0.1],...
    "Parent",j,...
    "Value",1,...
    "Enable","OFF")

   % Dacă valoarea depășește limita, afișează un mesaj de eroare și închide figura curentă
   
   if VCC > 15
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
   end


   if VCC < 4.5
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
    end


    %Citire imagine Astabil

    x = imread('POZA.png');



    %Ui Control pentru Slider
   uicontrol("Style","slider",...
        "Value",numar_perioade,...
        "Units","normalized",...
        "Position",[0.93,0.15,0.03,0.3],...
        "Min",minims,"Max",maxims,...
        "Callback",'numar_perioade=round(get(gcbo,''value'')),close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h),buton_semnale')
   uicontrol("Style","text",...
       "String","Nr.Perioade",...
       "Units","normalized",...
       "Position",[0.92,0.1,0.05,0.05])
     

% Crearea axei pentru imagine Astabil
ax_image = axes('Position', [0 0.08 0.35 0.5]); % Modificați valorile pentru a ajusta poziția și dimensiunile axei

% Afisarea imaginii  Astabil
imshow(x, 'Parent', ax_image);



%Generare Semnal triunghi pentru incarcare si descarcare Condensator


end



%Incepere caz Monostabil
if z==2
    set (pop,"value",2)
    %Butoane Interconexiune Pagini
    
% UI Controls pentru valorile componentelor
    uicontrol("Style","text",...
        "Units","normalized",...
        "String","Parametrii de Iesire",...
        "Position",[0.37 0.9 0.1 0.05],...
        "FontSize",16)

     uicontrol("Style","pushbutton",...
        "String","Teorie NE555",...
        "Units","normalized",...
        "Position",[0.23 0.75 0.1 0.04],...
        "Callback",'m=0,close,functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h)')

    uicontrol("Style","pushbutton",...
    "String",'Pagina Configuratii NE555',...
    "Units","normalized",...
    "Position",[0.23 0.7 0.1 0.04],...
    "Callback",'h=1,close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h)')

    uicontrol("Style","pushbutton",...
    "String",'Inchideti Pagina',...
    "Units","normalized",...
    "Position",[0.23 0.65 0.1 0.04], ...
    "Callback","close")




      % UI Controls pentru valorile componentelor

    uicontrol("Style","text",...
        "Units","normalized",...
        "String","Valorile Componentelor",...
        "Position",[0.07 0.9 0.1 0.05],...
        "FontSize",16)




% Ui Control pentru valorile rezistentei R1

    uicontrol("Style","text",...
        "String","R1",...
        "Units","normalized",...
        "Position",[0.1 0.8 0.2 0.1],...
    "Parent",j)

 BR1=   uicontrol("Style","edit",...
        "String",r1,...
        "Units","normalized",...
        "Position",[0.4 0.8 0.2 0.1],...
        "Tag","rezistenta1",...
    "Callback",'buton_semnale',...
    "Parent",j);

Bk=uicontrol("Style","popupmenu",...
        "String","Ω | KΩ | MΩ",...
        "Units","normalized",...
        "Tag","popu",...
        "Position",[0.7 0.8 0.2 0.1],...
    "Parent",j,...
    "Value",1,...
    "Callback",'buton_semnale' )

     
    if r1 > 100
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
    end
  if r1 ==0
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
  end
  if r2 ==0
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
  end



    % Ui Control pentru valorile rezistentei R2

    uicontrol("Style","text",...
        "String","R2",...
        "Units","normalized",...
        "Position",[0.1 0.6 0.2 0.1],...
    "Parent",j)

   BR2= uicontrol("Style","edit",...
        "String",r2,...
        "Units","normalized",...
        "Position",[0.4 0.6 0.2 0.1],...
        "Tag","rezistenta2",...
    "Callback",'buton_semnale',...
    "Parent",j);
   
Bk2=uicontrol("Style","popupmenu",...
        "String","Ω | KΩ | MΩ",...
        "Units","normalized",...
        "Tag","popu2",...
        "Position",[0.7 0.6 0.2 0.1],...
    "Parent",j,...
    "Value",1,...
    "Callback",'buton_semnale' )

   
 if r2 > 100
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end
 
  if r2 <1
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end
 if r2 ==0
    errordlg('Valoarea introdusă depășește limita permisă.Reveniti la partea de teorie.', 'Eroare');
    close(fig);
    return;
 end

    
    % Ui Control pentru valorile Condensatorului C
   uicontrol("Style","text",...
        "String","C",...
        "Units","normalized",...
        "Position",[0.1 0.4 0.2 0.1],...
    "Parent",j)

   BC= uicontrol("Style","edit",...
        "String",c,...
        "Units","normalized",...
        "Position",[0.4 0.4 0.2 0.1],...
        "Tag","condensator",...
    "Callback",'buton_semnale',...
    "Parent",j);

BC=uicontrol("Style","pop",...
         "String","F | mF | μF | nF",...
        "Units","normalized",...
        "Position",[0.7 0.4 0.2 0.1],...
        "Tag","popu3",...
    "Parent",j,...
    "Value",1,...
    "Callback",'buton_semnale' )
    
    % Ui Control pentru valorile Tensiunii VCC
   uicontrol("Style","text",...
        "String","VCC",...
        "Units","normalized",...
        "Position",[0.1 0.2 0.2 0.1],...
    "Parent",j)

    BP=uicontrol("Style","edit",...
        "String",VCC,...
        "Units","normalized",...
        "Position",[0.4 0.2 0.2 0.1],...
    "Parent",j,...
        "Tag","tensiune",...
    "Callback",'buton_semnale');

    Bro=uicontrol("Style","popupmenu",...
        "String","[V]",...
        "Units","normalized",...
        "Position",[0.7 0.2 0.2 0.1],...
    "Parent",j,...
    "Value",1,...
    "Enable","off")

    


    % Citirea imaginii Circuit Monostabil
    x = imread('poza2.png');
ax_image = axes('Position', [0.04 0.08 0.35 0.5]); % Modificați valorile pentru a ajusta poziția și dimensiunile axei
imshow(x, 'Parent', ax_image);



    % Slider

     uicontrol("Style","slider",...
        "Value",numar_perioade,...
        "Units","normalized",...
        "Position",[0.93,0.15,0.03,0.3],...
        "Min",minims,"Max",maxims,...
        "Callback",'numar_perioade=round(get(gco,''value'')),close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h),buton_semnale')
      uicontrol("Style","text",...
       "String","Nr.Perioade",...
       "Units","normalized",...
       "Position",[0.92,0.1,0.05,0.05])





      %Buton Trigger

     uicontrol("Style","pushbutton",...
         "Units","normalized",...
         "String","Trigger",...
         "Position",[0.25 0.6 0.06 0.04],...
         "Callback",'k=1,close,functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h),buton_semnale;')



    if k==1

   %Afisare Trigger cat a fost apasat 
uicontrol("Style","edit",...
    "Units","normalized",...
    "enable","off",...
    "String",timp_low,...
    "Position",[0.18 0.55 0.06 0.04],...
   "Callback",'timp_low=str2num(get(gco,''string'')),close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h);');

uicontrol("Style","text",...
    "Units","normalized",...
    "String","Timp Trigger Apasat[ms]",...
    "Position",[0.07 0.55 0.1 0.04])


  

%Afisare Trigger cat a fost apasat

uicontrol("Style","edit",...
    "Units","normalized",...
    "enable","off",...
    "String",timp_high,...
    "Position",[0.36 0.55 0.06 0.04],...
    "Callback",'timp_high=str2num(get(gco,''string'')),close, functie555(r1, r2, c, VCC, numar_perioade,z,k,m,timp_low,timp_high,h)');
uicontrol("Style","text",...
    "Units","normalized",...
    "String","Timp trigger neapasat[ms]",...
    "Position",[0.25 0.55 0.1 0.04])



    end

end
     
end


