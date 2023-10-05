function getintegrand1=getintegrand1(rbarstar,abar,Bimax)

for ii=1:length(rbarstar)
    getintegrand1(ii)=Bi0(rbarstar(ii),abar,Bimax)*rbarstar(ii);
end
end
