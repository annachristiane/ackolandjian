a1=input('Veuillez inserer les coefficients du numerateur de la fct A(z) sous forme de vecteur ligne');%numerateur de A(z)
a2=input('Veuillez inserer les coefficients du denominateur de la fct A(z) sous forme de vecteur ligne');%Deno de A(z)
Te=input('Veuillez inserer la periode d''echantillonage en seconde');% Te
%Frequentiel de A(z)
freqz(a1,a2);
Az = tf(a1,a2,Te);
[values, times] = step(Az) ;
n=size(values);
e=abs(values(n(1))-1);%erreur de A
h=0; % h est un indicateur pour savir si le temps de monte existe ou non
t=0;
for i=1:n(1)
    if values(i)>=1
        h=1;
        t=i;
        break
    end
end
step(Az);% reponse indicielle de A
disp(['Erreur de position = ',num2str(e)]);
if h==1
    tm=(t-1)*Te;
    disp(['Temps de monte = ',num2str(tm)]);
else
    disp('Temps de monte n''existe pas');
end
impulse(Az);%reponse impulsionelle de A
b1=input('Veuillez inserer les coefficients du numerateur de la fct B(z) sous forme de vecteur ligne');
b2=input('Veuillez inserer les coefficients du denominateur de la fct B(z) sous forme de vecteur ligne');
c1=input('Veuillez inserer les coefficients du numerateur de la fct C(z) sous forme de vecteur ligne');
c2=input('Veuillez inserer les coefficients du denominateur de la fct C(z) sous forme de vecteur ligne');
% Calcul de H(z)
[g1,g2]=convdeuxpol(a1,a2,c1,c2);
h1=conv(g1,b2);
de1=conv(g1,b1);
de2=conv(g2,b2);
v=size(de1);
w=size(de2);
if v(2)<w(2)
    r=w(2)-v(2);
    de11=[zeros(1,r) de1];
elseif v(2)>w(2);
    r=v(2)-w(2);
    de22=[zeros(1,r) de2];
end
if v(2)==w(2)
    h2=de1+de2;
else
    h2=de11+de22;
end
%Etude de H(z)
freqz(h1,h2);
Hz = tf(h1,h2,Te);
[values1, times1] = step(Hz) ;
n1=size(values1);
e1=abs(values1(n1(1))-1);%erreur de H
h11=0; % h11 est un indicateur pour savir si le temps de monte existe ou non
t1=0;
for i=1:n1(1)
    if values1(i)>=1
        h11=1;
        t1=i;
        break
    end
end
step(Hz);% reponse indicielle de H
disp(['Erreur de position = ',num2str(e1)]);
if h11==1
    tm1=(t1-1)*Te;
    disp(['Temps de monte = ',num2str(tm1)]);
else
    disp('Temps de monte n''existe pas');
end
impulse(Hz);%reponse impulsionelle de H