clear;
L_rgb=imread('C:\Users\������\Desktop\�������\pepper.bmp');
 [H W s]=size(L_rgb);
L_ycbcr=rgb2ycbcr(L_rgb);%������� � YCBCR ������������
N=8;
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % ������ ���
DCT=zeros(H,W);
Y_image=zeros(H,W);
T=zeros(8,8);
for i=1:1:8
    for j=1:1:8
        if i==1
            T(i,j)=sqrt(1/N);
        else
            T(i,j)=sqrt(2/N)*cos((((2*(j-1)+1)*pi)/(2*N))*(i-1));
        end
        
    end
end

X=zeros(8,8);
Y=zeros(8,8);
for u=1:8:H
    
    for l=1:8:W

        for i=1:1:8
            
            for j=1:1:8
   
            p=L_ycbcr(i+u-1,j+l-1,1);
            X(i,j)=p;
            Y_image(i+u-1,j+l-1)=p;

            end 
        end
      Y=(T*X)*T';
      for h=1:1:8
          for v=1:1:8
      DCT(h+u-1,v+l-1)=round(Y(h,v));
          end
      end
      
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%�������� ���
DCT_back=zeros(H,W);
Y1=zeros(8,8);
X1=zeros(8,8);

for u=1:8:H
    
    for l=1:8:W

        for i=1:1:8
            
            for j=1:1:8
   
            p=DCT(i+u-1,j+l-1,1);
            Y1(i,j)=p;
            
            

            end 
        end
      X1=(T'*Y1)*T;
      for h=1:1:8
          for v=1:1:8
      DCT_back(h+u-1,v+l-1)=round(X1(h,v));
          end
           
      end
    end
end
% % % % % % % % % % % % % % % % % % % % % % % % psnr
PSNR=psnr(Y_image,DCT_back);
 
A=double(Y_image);
B=double(DCT_back);
d=sum((A(:)-B(:)).^2)/numel(size(A));
psnr=10*log10(H*W/d);

% % % % % % % % % % % % % % % % % % % % % % % % % % % % ����� 2

