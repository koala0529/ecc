function [ x,y ] = pointmul( k,px,py,a,b,p)
% ʵ������Բ���ߵ��(ʸ����)�ļ��� 
% a,b,p��Ϊ��Բ����y^2=x^3+ax+b(mod p)�Ĳ���
% k�ǵ�ı�����px,py��һ���������
% ���(x,y)=k*(px,py);
% made by koala
% 2016,7,14
n=32;
qx=0;
qy=0;
for i=1:n
    tmp=bitget(k,i);
    if tmp==1
        [qx,qy]=pointadd( qx,qy,px,py,a,b,p); 
    end
    [px,py]=pointadd( px,py,px,py,a,b,p); 
    
end

x=qx;
y=qy;
end

