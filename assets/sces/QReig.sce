A=rand(5,5); 
A=A'*A; 
eig=gsort(spec(A));

An=A;
N=100;
err=[];
for n=1:N
[Q,R]=qr(An); //QRʬ��
An=R*Q; 
err=[err,norm(eig-gsort(diag(An)))];//��
end
figure;plot(log10(err))//���Υץ�å�
