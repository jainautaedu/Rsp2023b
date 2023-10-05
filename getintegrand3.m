function getintegrand3=getintegrand3(rbarstar,abar,Bimax,lambda,m,n)
    
for ii=1:length(rbarstar)
        getintegrand3(ii)=Bi0(rbarstar(ii),abar,Bimax)*rbarstar(ii)*besselj(0,lambda(m)*rbarstar(ii))*besselj(0,lambda(n)*rbarstar(ii));
end

end
