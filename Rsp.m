function Rsp = Rsp(czero,cn,pn,lambda,abar,Bbar,Bisink)

sum=0;

for n=1:length(lambda)
    sum=sum+cn(n)*pn(n)*besselj(1,lambda(n)*abar)*abar;
end

Rsp=-1/(czero/2*abar^2+sum);

Rsp=Rsp-2*(Bbar+1/Bisink);

end