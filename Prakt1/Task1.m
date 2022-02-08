%1.0 Matlab Data Types

a = 42;
a = uint16( a );    
whos a              % no semicolon: allow output
intmax( 'uint16' )  % no semicolon: allow output

a = 66666;      % automatic cast to double!

a = int8( a );  % truncation from 8 to 1 byte: a = 127

% Plotting Functions of One and Two Varialbles visualizing y = f( x )

%1.1
x = -pi : pi;
y = coth( x );

%1.2
figure( 1 ); clf; hold on; grid on;
plot( x, y , '*-');

%1.3
x = -pi : pi/20 : pi;   % note that x contains zero!
y = coth( x );
plot( x, y , 'r*');      % note that coth( 0 ) = inf

%1.5 and 1.4
x = -pi : pi/300 : pi;  % note that x contains zero!
y = coth( x );
plot( x, y , 'g-');


% 1.6 z = f(x, y)
% bowl
x = -20*pi : 2.2 : 20*pi;
y = x;

%Eine weitere wichtige Anwendung dreidimensionaler Grafik ist die Darstellung von
%Flaechen im R^3. Solche Flaechen koennen ueber eine Funktion f : R^2-> R definiert
%werden. Hier betrachten wir als Beispiel die Funktion f(x; y]) = 1 - k(x; y)k2
%Analog zur ueblichen Darstellung eindimensionaler Funktionen muss man die
%zur Darstellung verwendeten Punkte definieren. Statt eines Vektors braucht man
%jetzt aber eine Matrix von Punkten, die das darzustellende Gebiet abdecken.
%Genauer brauchen wir zwei Matrizen: Eine fuer die x-Komponenten der Punkte
%und eine fuer die y-Komponenten.
%Diese koennen efizient mit der 'meshgrid'-Anweisung erzeugt werden.
%[X,Y] = meshgrid(-8:.5:8,-8:.5:8);
%Dann werten wir die Funktion aus und speichern die Punkte in Z
%Z = 1-(X.^2+Y.^2);

%1.7
[X, Y] = meshgrid(x, y);
Z = sqrt((X.^2 + Y.^2));

figure(1);clf;
surfc(X, Y, Z);

%2.0
% magic square

x = 1 : 100;
y = x;

[X, Y] = meshgrid(x, y);
Z = magic( 100 );

figure(3);
surfc(X, Y, Z);

%2.1
% magic cube


A = [16 3 2 13; ...
     5 10 11 8; ...
     9 6 7 12; ...
     4 15 14 1];

B = [44 55 -26 -39; ...
     36 -17 22 -7; ...
    -35 -30 51 48; ...
    -11 26 -13 32];

C = [-51	-14	27	72; ...
    24	75	-46	-19; ...
    76	23	-18	-47; ...
    -15	-50	71	28];

D = [25 -10 31 -12; ...
    -31 -34 47 52; ...
    -16 35 -6 21; ...
    56 43 -38 -27];

MC = cat(3, A, B, C, D);

% permute( MC, [1, 2, 3]);  % default

sum( MC )       % no semicolon: allow output

permute(MC, [3, 2, 1]);

sum( MC )       % no semicolon: allow output

permute(MC, [2, 1, 3]);

sum( MC )       % no semicolon: allow output

sd1 = MC(1, 1, 1) +  MC(2, 2, 2) +  MC(3, 3, 3) +  MC(4, 4, 4)  % space diagonals are different!!
sd2 = MC(1, 1, 4) +  MC(2, 2, 3) +  MC(3, 3, 2) +  MC(4, 4, 1)

% this is not even a "semi perfect magic cube"!
      
  
      