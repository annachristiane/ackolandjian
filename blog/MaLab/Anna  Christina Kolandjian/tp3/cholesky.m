function[l]=cholesky(A,b)
l(1,1)=sqrt(A(1,1));
n=length(A);
for k=2:n
l(k,1)=A(k,1)/l(1,1);
end

for j=2:n
    for i=j:n

     if i==j
       
             s=A(i,i);
              for o=1:j-1
                  s=s-(l(i,o))^2;
              end
              l(i,i)=sqrt(s);
       
     else
        l(i,j)=(1/l(j,j))*(A(i,j)-l(i,1:j-1)*l(j,1:j-1));
     end
    end
end

m=forward(l,b);
Backsub(l',m)






   



        

