
function[x]=Backsub(A,b) %A is not augmented

n=length(A);
    x(n)=b(n)/A(n,n);
   
 for i=n-1:-1:1
     x(i)=b(i);
     for k=i+1:1:n
         x(i)=x(i)-A(i,k)*x(k);
     end
     x(i)=x(i)/A(i,i);
 end
end
