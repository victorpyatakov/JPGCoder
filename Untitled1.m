clear;
R=1;
q=zeros(8,8);
for i=1:1:8
    for j=1:1:8
        
            q(i,j)=1+((i-1)+(j-1))*R;
      
        
    end
end

k=1;
AC=zeros(1,63);
for i=1:1:8
    for j=1:1:8
        
        AC(1,k)=q(i,j+1);%1
        k=k+1;
        AC(1,k)=q(i+1,j);%2
        k=k+1;
        AC(1,k)=q(i+2,j);%3
          k=k+1;
        AC(1,k)=q(i+1,j+1);%4
          k=k+1;
        AC(1,k)=q(i,j+2);%5
          k=k+1;
        AC(1,k)=q(i,j+3);%6
          k=k+1;
        AC(1,k)=q(i+1,j+2);%7
          k=k+1;
        AC(1,k)=q(i+2,j+1);%8
          k=k+1;
        AC(1,k)=q(i+3,j);%9
          k=k+1;
        AC(1,k)=q(i+4,j);%10
          k=k+1;
        AC(1,k)=q(i+3,j+1);%11
          k=k+1;
        AC(1,k)=q(i+2,j+2);%12
          k=k+1;
        AC(1,k)=q(i+1,j+3);%13
          k=k+1;
        AC(1,k)=q(i,j+4);%14
          k=k+1;
        AC(1,k)=q(i,j+5);%15
          k=k+1;
        AC(1,k)=q(i+1,j+4);%16
          k=k+1;
        AC(1,k)=q(i+2,j+3);%17
          k=k+1;
        AC(1,k)=q(i+3,j+2);%18
          k=k+1;
        AC(1,k)=q(i+4,j+1);%19
          k=k+1;
        AC(1,k)=q(i+5,j);%20
          k=k+1;
        AC(1,k)=q(i+6,j);%21
          k=k+1;
        
          AC(1,k)=q(i+5,j+1);%22
            k=k+1;
        AC(1,k)=q(i+4,j+2);%23
          k=k+1;
        AC(1,k)=q(i+3,j+3);%24
          k=k+1;
        AC(1,k)=q(i+2,j+4);%25
          k=k+1;
        AC(1,k)=q(i+1,j+5);%26
          k=k+1;
        AC(1,k)=q(i,j+6);%27
          k=k+1;
        AC(1,k)=q(i,j+7);%28
          k=k+1;
        
        AC(1,k)=q(i+1,j+6);%29
          k=k+1;
        AC(1,k)=q(i+2,j+5);%30
          k=k+1;
        AC(1,k)=q(i+3,j+4);%31
          k=k+1;
        AC(1,k)=q(i+4,j+3);%32
          k=k+1;
        AC(1,k)=q(i+5,j+2);%33
          k=k+1;
        AC(1,k)=q(i+6,j+1);%34
          k=k+1;
        AC(1,k)=q(i+7,j);%35
          k=k+1;
        
        AC(1,k)=q(i+7,j+1);%36
          k=k+1;
        AC(1,k)=q(i+6,j+2);%37
          k=k+1;
        AC(1,k)=q(i+5,j+3);%38
          k=k+1;
        AC(1,k)=q(i+4,j+4);%39
          k=k+1;
        AC(1,k)=q(i+3,j+5);%40
          k=k+1;
        AC(1,k)=q(i+2,j+6);%41
          k=k+1;
        AC(1,k)=q(i+1,j+7);%42
          k=k+1;
        AC(1,k)=q(i+2,j+7);%43
          k=k+1;
        
        AC(1,k)=q(i+3,j+6);%44
          k=k+1;
        AC(1,k)=q(i+4,j+5);%45
          k=k+1;
        AC(1,k)=q(i+5,j+4);%46
          k=k+1;
        AC(1,k)=q(i+6,j+3);%47
          k=k+1;
        AC(1,k)=q(i+7,j+2);%48
          k=k+1;
        AC(1,k)=q(i+7,j+3);%49
          k=k+1;
        
        AC(1,k)=q(i+6,j+4);%50
          k=k+1;
        AC(1,k)=q(i+5,j+5);%51
          k=k+1;
        AC(1,k)=q(i+4,j+6);%52
          k=k+1;
        AC(1,k)=q(i+3,j+7);%53
          k=k+1;
        AC(1,k)=q(i+4,j+7);%54
          k=k+1;
        
         AC(1,k)=q(i+5,j+6);%55
           k=k+1;
        AC(1,k)=q(i+6,j+5);%56
          k=k+1;
        AC(1,k)=q(i+7,j+4);%57
          k=k+1;
        AC(1,k)=q(i+7,j+5);%58
          k=k+1;
        
         AC(1,k)=q(i+6,j+6);%59
           k=k+1;
        AC(1,k)=q(i+5,j+7);%60
          k=k+1;
        AC(1,k)=q(i+6,j+7);%61
          k=k+1;
        AC(1,k)=q(i+7,j+6);%61
          k=k+1;
        AC(1,k)=q(i+7,j+7);%63
          k=k+1;
        
        
    end
end
