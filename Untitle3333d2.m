clear;
L_rgb=imread('C:\Users\Виктор\Desktop\для учебы\цоиии\pepper.bmp');
[H W s]=size(L_rgb);
L_ycbcr=rgb2ycbcr(L_rgb);%перевод в YCBCR пространство
N=8;

% % % % % % % % % % % % % % % % % % % % % % % % % % % % % прямое дкп
DCT=zeros(H,W);
Y_image=zeros(H,W);
T=zeros(8,8);
for i=1:1:8
    for j=1:1:8
        if i==1
            T(i,j)=sqrt(1/N);
        else
            T(i,j)=sqrt(2/N)*cos((((2*(j-1)+1)*pi)/(2*N))*(i-1));
            T(i,j)=T(i,j);
        end
        
    end
end

X=zeros(8,8);
Y=zeros(8,8);
YY=zeros(8,8);
for u=1:8:H
    
    for l=1:8:W

        for i=1:1:8
            
            for j=1:1:8
   
%             p=L_ycbcr(i+u-1,j+l-1,1);
            X(i,j)=255;
%             Y_image(i+u-1,j+l-1)=p;

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
