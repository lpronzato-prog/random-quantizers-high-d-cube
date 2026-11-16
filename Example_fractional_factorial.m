% Example of construction of a 2^(d-m) fractional factorial (ff) design Xn
% with large minimum Hamming distance, rho_H(Xn)=PR^2(Xn), with n=2^(d-m)
% and PR(Xn) the packing radius if Xn
%-----
% Author: L. Pronzato, 2025 <pronzato@i3s.unice.fr>
% Permission is granted to use, modify and redistribute this software for 
% non-commercial research and educational purposes only. Commercial use 
% requires prior written permission from the author.
% This MATLAB function is provided in the hope that it will prove useful, 
% but WITHOUT ANY WARRANTY OF FITNESS FOR A PARTICULAR PURPOSE.

d=10; m=2;
n=2^(d-m)

% Creation of a 2^(d-m) ff design with m random generators:
[~,G_initial,Dist_pattern_initial,WLP_initial]=greedy_generators(d,m,[],m,0,1)
VB=Dist_pattern_initial(2:d+1); rho_H_initial=find(VB>0,1)

% Improvement by a deterministic exchange algorithm:
max_excursion=2^(d-m)-(d-m)-1-m
excursion=10;
nrandom=0;
[~,G_1,Dist_pattern_1,WLP_1]=greedy_generators(d,m,G_initial,nrandom,excursion,1e3)
VB=Dist_pattern_1(2:d+1); rho_H_1=find(VB>0,1)

% Improvement by simulated annealing :
TYPE=1; % (1 to optimize the distance pattern, 2 to optimize the word length pattern WLP 
%           --- not of particular interest here and not efficient for large d) 
a=4/5;
[ X, Gen, Dist_pattern, WLP ] = ...
    SA_exchange_generators( d,m,G_initial,1e3,TYPE,a, 0  );
VB=Dist_pattern(2:d+1); rho_H=find(VB>0,1)

% Results for this generators:
[ X, Gen, Dist_pattern, WLP ]= greedy_generators( d,m,Gen,0,0,1);
Gen, Dist_pattern, WLP

%% Generators expressed using the notation with Latin alphabet
[Gen_letters] = generators(Gen);
disp(Gen_letters)