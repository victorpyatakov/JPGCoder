clear;
L_rgb=imread('C:\Users\Виктор\Desktop\для учебы\цоиии\pepper.bmp');
[H W s]=size(L_rgb);
L_ycbcr=rgb2ycbcr(L_rgb);%перевод в YCBCR пространство
N=4;

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % прямое дкп
DCT=zeros(H,W);
Y_image=zeros(H,W);
T=zeros(4,4);
for i=1:1:4
    for j=1:1:4
        if i==1
            T(i,j)=sqrt(1/N);
        else
            T(i,j)=sqrt(2/N)*cos((((2*(j-1)+1)*pi)/(2*N))*(i-1));
            T(i,j)=T(i,j);
        end
        
    end
end

X=[1; 1; 1; 1];


v=dct(X,4);

for i=1:1:4
    for j=1:1:4
      
            T(i,j)=T(i,j)*255;
       
     
    end
end
a=sum(sum(T));
b=T*X;
u=sum(T);
% Y=zeros(4,4);
% YY=zeros(4,4);
% for u=1:4:H
%     
%     for l=1:4:W
% 
%         for i=1:1:4
%             
%             for j=1:1:4
%    
%             p=L_ycbcr(i+u-1,j+l-1,1);
%             X(i,j)=p;
%             Y_image(i+u-1,j+l-1)=p;
% 
%             end 
%         end
%       Y=(T*X)*T';
% b=dct(X);
%       for h=1:1:4
%           for v=1:1:4
%       DCT(h+u-1,v+l-1)=round(Y(h,v));
%           end
%       end
%       
%     end
% end
% 
