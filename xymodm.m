function [p] = xymodm(x,y,m)
% ʵ����������ģ�˵ļ��� 
% ���õĽ����㷨
% x��y�����������е�����m��һ������
% ���x1=x*y (mod m)
% made by koala
% 2016,7,14
p=0;
n=32;
for i=n:-1:1
    p=2*p;
    tmp=bitget(x,i);
    j=tmp*y;
    p=p+j;
    if p >= m
        p=p-m;
    end
    if p >= m
        p=p-m;
    end
end
end


