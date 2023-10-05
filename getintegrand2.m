function getintegrand2=getintegrand2(rbarstar,abar,Bimax,lambda,m)
    
for ii=1:length(rbarstar)
        getintegrand2(ii)=Bi0(rbarstar(ii),abar,Bimax)*rbarstar(ii)*besselj(0,lambda(m)*rbarstar(ii));
end

end
