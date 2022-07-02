function adj = vec2adj(vec)
% function vec = vec2adj(adj);
%
% From vectorized connectivty at edges is converted to symmetric connectivity matrix
%
% (C) 2019 Moo K. Chung 
% University of Wisconsin-Madison
% mkchung@wics.edu
%
%
% 2019 Created Chung
% 2022 July 2 Updated Chung

q=size(vec,1);           % q = number of edges  
p=1/2 + sqrt(2*q + 1/4); % The number of nodes p gives equation p*(p-1)/2 = q
                         % This should be exact integer. 
                         % If not, the eize of vec is incorrectly given.

A=ones(p,p); %connectivity matrix of size p x p
ind = find(triu(A,1)); %linear indexing of upper triangle matrix

adj=zeros(p,p);
adj(ind)=vec;
adj=(adj+adj')/2;  %have to make it symmetric.



