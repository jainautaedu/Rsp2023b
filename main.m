clear
format long
Nmax=127; 
N=Nmax;

abar=0.2;
Bbar=1.0;
Bisink=0.1;

Bimax=1000;

getlambdas;
getintegrals;
getcn;

imax=101;
abarmin=0.2;
abarmax=0.55;

for i=1:imax
    abarvec(i)=abarmin+(abarmax-abarmin)*(i-1)/(imax-1);
    abar=abarvec(i);
    getlambdas;
    getintegrals;
    getcn;

    Rspvec(i)=Rsp(czero,cn,pn,lambda,abar,Bbar,Bisink);
    %pause
    i
end

p=polyfit(abarvec,Rspvec,3);
for i=1:imax
    Rspfitvec(i)=p(1)*(abarvec(i))^3+p(2)*(abarvec(i))^2+p(3)*abarvec(i)+p(4);
    %Rspfitvec(i)=p(1)*(abarvec(i))^4+p(2)*(abarvec(i))^3+p(3)*abarvec(i)^2+p(4)*abarvec(i)+p(5);
    percenterrorvec(i)=abs(Rspvec(i)-Rspfitvec(i))/Rspvec(i)*100;
end


figure; hold on
plot(abarvec,Rspvec,'b-','LineWidth',2)
plot(abarvec,Rspfitvec,'r--','LineWidth',2)
legend('Solution','Fit');

maxerror=max(percenterrorvec(1:87))

c0=p(4)
c1=p(3)
c2=p(2)
c3=p(1)



