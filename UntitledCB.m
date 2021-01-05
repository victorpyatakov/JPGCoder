clear;
L_rgb=imread('C:\Users\Виктор\Desktop\курсуои\airplane.bmp');
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%обратное дкп
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
PSNR=psnr_mse_maxerr(Y_image(:,:,1),DCT_back(:,:,1));
 
% A=double(Y_image);
% B=double(Y_image);
% d=sum((A(:)-B(:)).^2)/numel(size(A));
% psnr=10*log10(H*W/d);

% % % % % % % % % % % % % % % % % % % % % % % % % % % % пункт 2
% квантование
R=5;
q=zeros(8,8);
for i=1:1:8
    for j=1:1:8
        
            q(i,j)=1+((i-1)+(j-1))*R;
      
        
    end
end
Y_dct=zeros(8,8);
Y_q=zeros(8,8);
Qantov=zeros(H,W);
for u=1:8:H
    
    for l=1:8:W

        for i=1:1:8
            
            for j=1:1:8
   
            p=DCT(i+u-1,j+l-1,1);
            Y_dct(i,j)=p;
         

            end 
        end
        


      for h=1:1:8
          for v=1:1:8
              Y_q(h,v)=round(Y_dct(h,v)/q(h,v));
      Qantov(h+u-1,v+l-1)=Y_q(h,v);
          end
      end
      
    end
end
% % % % % % деквантование
D_Qantov=zeros(H,W);
Y_qant=zeros(8,8);
Y_dq=zeros(8,8);
for u=1:8:H
    
    for l=1:8:W

        for i=1:1:8
            
            for j=1:1:8
   
            p=Qantov(i+u-1,j+l-1,1);
            Y_qant(i,j)=p;
         

            end 
        end
        


      for h=1:1:8
          for v=1:1:8
              Y_dq(h,v)=Y_qant(h,v)*q(h,v);
      D_Qantov(h+u-1,v+l-1)=Y_dq(h,v);
          end
      end
      
    end
end
DCT_back_qantov=zeros(H,W);
Y2=zeros(8,8);
X2=zeros(8,8);

for u=1:8:H
    
    for l=1:8:W

        for i=1:1:8
            
            for j=1:1:8
   
            p=D_Qantov(i+u-1,j+l-1,1);
            Y2(i,j)=p;
            
            

            end 
        end
      X2=(T'*Y2)*T;
      for h=1:1:8
          for v=1:1:8
      DCT_back_qantov(h+u-1,v+l-1)=round(X2(h,v));
      
          end
           
      end
    end
end
%%%%%%%%%%%%%%%%% psnr
PSNR2=psnr_mse_maxerr(Y_image(:,:,1),DCT_back_qantov(:,:,1));