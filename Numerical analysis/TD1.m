n=1000;
Y=zeros(3,n);
X=zeros(3,n);
x0=[1,1,1];
X(:,1)=x0;
Y(:,1)=[0,0,0];
V1=[-1:sqrt(2):-1];
lambda_1=2+sqrt(2);
A1=A-lambda_1*V1*V1.'/(V1.'*V1)

A=[2,-1,0;-1,2,-1;0,-1,2]
B=[0,3,-1;4,-1,-1;-4,3,3]
C=B*B
for i=2:n
    Y(:,i)=A1*X(:,i-1);
    X(:,i)=Y(:,i)/norm(Y(:,i));
end


lanbda_d=max(eig(A1))
eig(A1)
lim=dot(A1*X(:,n),X(:,n))
err=abs(lim-lanbda_d)