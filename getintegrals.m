% integrand1= @(rbarstar) getintegrand1(rbarstar,abar,Bimax);
% I1=integral(integrand1,0,1);
% 
% 
% for m=1:length(lambda)
%     integrand2= @(rbarstar) getintegrand2(rbarstar,abar,Bimax,lambda,m);
%     I2(m)=integral(integrand2,0,1);
% end
% 
% for m=1:length(lambda)
%     for n=1:length(lambda)
%         integrand3= @(rbarstar) getintegrand3(rbarstar,abar,Bimax,lambda,m,n);
%         I3(m,n)=integral(integrand3,0,1);
%         I3a(m,n)=integral(integrand3,0,abar);
%     end
% end


 
%% Explciit expressions to determine integrals - *Faster*
 
I1=Bimax*abar^2/2;
 
for m=1:length(lambda)
     I2(m)=Bimax*abar*besselj(1,lambda(m)*abar)/lambda(m);
end

 
for m=1:length(lambda)
    for n=1:length(lambda)
        if (m==n)
            I3(m,n)=Bimax*abar^2/2*((besselj(0,lambda(m)*abar))^2+(besselj(1,lambda(m)*abar))^2);
        else
            I3(m,n)=Bimax*abar*(lambda(m)*besselj(1,lambda(m)*abar)*besselj(0,lambda(n)*abar)-lambda(n)*besselj(1,lambda(n)*abar)*besselj(0,lambda(m)*abar))/((lambda(m))^2-(lambda(n))^2);
        end
    end
end


%%%%%  https://www.wolframalpha.com/input?i2d=true&i=Integrate%5Br*besselj%5C%2840%290%5C%2844%29M*r%5C%2841%29*besselj%5C%2840%290%5C%2844%29N*r%5C%2841%29%2Cr%5D
