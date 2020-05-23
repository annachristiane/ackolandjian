
function[x]=forward(A,b)

n=length(A);
    x(1)=b(1)/A(1,1);
   
 for i=2:n
    x(i)=b(i);
     for k=1:i-1
         x(i)=x(i)-A(i,k)*x(k);
     end
     x(i)=x(i)/A(i,i);
 end



