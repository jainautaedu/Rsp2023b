lambda=100*[0.038317059702075
   0.070155866698156
   0.101734681350627
   0.133236919363142
   0.164706300508776
   0.196158585104682
   0.227600843805928
   0.259036720876184
   0.290468285349169
   0.321896799109744
   0.353323075500839
   0.384747662347716
   0.416170942128144
   0.447593189976528
   0.479014608871854
   0.510435351835715
   0.541855536410613
   0.573275254379010
   0.604694578453475
   0.636113566984812
   0.667532267340985
   0.698950718374958
   0.730368952255738
   0.761786995846415
   0.793204871754763
   0.824622599143735
   0.856040194363502
   0.887457671449263
   0.918875042516950
   0.950292318080447
   0.981709507307908
   1.013126618230387
   1.044543657912827
   1.075960632595091
   1.107377547808992
   1.138794408475950
   1.170211218988924
   1.201627983281490
   1.233044704886357
   1.264461386985166
   1.295878032451040
   1.327294643885096
   1.358711223647890
   1.390127773886597
   1.421544296558590
   1.452960793451959
   1.484377266203423
   1.515793716314014
   1.547210145162859
   1.578626554019303
   1.610042944053620
   1.641459316346496
   1.672875671897441
   1.704292011632266
   1.735708336409759
   1.767124647027638
   1.798540944227884
   1.829957228701530
   1.861373501092955
   1.892789762003760
   1.924206011996257
   1.955622251596626
   1.987038481297770
   2.018454701561909
   2.049870912822923
   2.081287115488501
   2.112703309942078
   2.144119496544620
   2.175535675636242
   2.206951847537694
   2.238368012551717
   2.269784170964295
   2.301200323045791
   2.332616469052006
   2.364032609225143
   2.395448743794699
   2.426864872978287
   2.458280996982398
   2.489697116003099
   2.521113230226686
   2.552529339830281
   2.583945444982395
   2.615361545843440
   2.646777642566216
   2.678193735296345
   2.709609824172707
   2.741025909327806
   2.772441990888146
   2.803858068974556
   2.835274143702514
   2.866690215182434
   2.898106283519944
   2.929522348816139
   2.960938411167825
   2.992354470667742
   3.023770527404776
   3.055186581464156
   3.086602632927644
   3.118018681873704
   3.149434728377672
   3.180850772511904
   3.212266814345927
   3.243682853946578
   3.275098891378124
   3.306514926702394
   3.337930959978885
   3.369346991264880
   3.400763020615541
   3.432179048084012
   3.463595073721510
   3.495011097577409
   3.526427119699323
   3.557843140133188
   3.589259158923327
   3.620675176112526
   3.652091191742101
   3.683507205851957
   3.714923218480648
   3.746339229665436
   3.777755239442346
   3.809171247846210
   3.840587254910721
   3.872003260668482
   3.903419265151044
   3.934835268388950
   3.966251270411776
   3.997667271248168];
% 
% for n=1:Nmax
%     lambda(n)=n*pi;
%     
% end


for n=1:Nmax
    pn(n)=-(Bisink*cosh(lambda(n)*Bbar)+lambda(n)*sinh(lambda(n)*Bbar))/(Bisink*sinh(lambda(n)*Bbar)+lambda(n)*cosh(lambda(n)*Bbar));
end

