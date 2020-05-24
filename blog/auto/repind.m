a=input('Donner les coefficients du numerateur sous forme de vecteur ligne');
b=input('Donner les coefficients du denominateur sous forme de vecteur ligne');
c=input('Donner la periode en seconde pour votre echantillonage');
Hz = tf(a,b,c);
[values, times] = step(Hz) ;
n=size(values);
e=abs(values(n(1))-1);
h=0; % h est un indicateur pour savir si le temps de monte existe ou non
for i=1:n(1)
    if values(i)>=1
        h=1;
        t=i;
        break
    end
end
step(Hz);
disp(['Erreur de position = ',num2str(e)]);
if h==1
    tm=(t-1)*c;
    disp(['Temps de monte = ',num2str(tm)]);
else
    disp('Temps de monte n''existe pas');
end
