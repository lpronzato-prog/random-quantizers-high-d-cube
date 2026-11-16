% Example of construction of random (or quasi-random) designs in high-dimensional balls and cubes
% with small Ls-mean quantisation error
%-----
% Author: L. Pronzato, 2025 <pronzato@i3s.unice.fr>
% Permission is granted to use, modify and redistribute this software for 
% non-commercial research and educational purposes only. Commercial use 
% requires prior written permission from the author.
% This MATLAB function is provided in the hope that it will prove useful, 
% but WITHOUT ANY WARRANTY OF FITNESS FOR A PARTICULAR PURPOSE.

d=30; 
n=2^10;
s=2;
accuracy=1e-3;

%% The reference measure is uniform in the cube [-1,1]^d
    disp('mu uniform in [-1,1]^d, design uniform in [-delta,delta]^d')
    % For n random points uniformly distributed in [-delta,delta]^d, the optimal delta is:
        deltaopt = Deltaopt_cube(1,d,n,s,accuracy)
    % the expected distortion (distortion = (Ls-mean quantisation error)^s) is:
        Edist = Edistortion_cube(1, deltaopt,d,n,s)
    %
    % Here n < 2^30
    disp('mu uniform in [-1,1]^d, design = subset of the vertices of [-delta,delta]^d')
    % For n vertices sampled among the vertices of [-delta,delta]^d, the optimal delta is:
        Deltaopt = Deltaopt_cube(0,d,n,s,accuracy)
    % the expected distortion (distortion = (Ls-mean quantisation error)^s) is:
        Edist = Edistortion_cube(0, Deltaopt,d,n,s)
        
