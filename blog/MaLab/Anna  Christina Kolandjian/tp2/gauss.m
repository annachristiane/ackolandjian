function[B]=gauss(A,b)
n=length(A);
B=[A b'];

for k=1:n-1
    for i=k+1:n
        m=B(i,k)/B(k,k);
        for j=k:n+1
            B(i,j)=B(i,j)-m*B(k,j);
        end
    end
end




        