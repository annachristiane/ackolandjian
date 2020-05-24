function [ e,f ] = convdeuxpol( a,b,c,d )
%a :numerateur de la 1ere fct , b deno de la 1ere fct
%c :numerateur de la 2eme fct , d deno de la 2eme fct
e=conv(a,c); %e numerateur du produit
f=conv(b,d); %f denominateur du produit
end

