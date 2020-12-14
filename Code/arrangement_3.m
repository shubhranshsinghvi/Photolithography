function ledcord = arrangement_3(nleds,d)
    flag = 0;
    l = (sqrt(nleds)-1)/2;
    ledcord=zeros(2,nleds);
    ledcord(1,1)=0;
    ledcord(2,1)=0;
    for k = 1:8
        ledcord(1,k+1)=sqrt(2)*d*cos(k*pi/4);
        ledcord(2,k+1)=sqrt(2)*d*sin(k*pi/4);
    end 
    l=l-1;
    if(l<=0)
        flag = 1;
    end
    if (flag == 0)
    for k = 9:24
        ledcord(1,k+1)=sqrt(2)*2*d*cos(k*pi/8);
        ledcord(2,k+1)=sqrt(2)*2*d*sin(k*pi/8);
    end
    l=l-1;
    if(l<=0)
        flag = 1;
    end
    if(flag == 0)
    for k = 25:48
        ledcord(1,k+1)=sqrt(2)*3*d*cos(k*pi/12);
        ledcord(2,k+1)=sqrt(2)*3*d*sin(k*pi/12);
    end
    l=l-1;
    if(l<=0)
        flag =1;
    end
    if (flag==0)
    for k = 49:80
        ledcord(1,k+1)=sqrt(2)*4*d*cos(k*pi/16);
        ledcord(2,k+1)=sqrt(2)*4*d*sin(k*pi/16);
    end
    l=l-1;
    if(l<=0)
        flag = 1;
    end
    if(flag==0)
    for k = 81:120
        ledcord(1,k+1)=sqrt(2)*5*d*cos(k*pi/20);
        ledcord(2,k+1)=sqrt(2)*5*d*sin(k*pi/20);
    end
    end
    end
    end
    end
    end
% A while loop can be used :)