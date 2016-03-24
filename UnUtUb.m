function [ ut, ub, un, an, at, rho,rc ] = UnUtUb ( r,v, a )
% this function is uesd to get un ut ub from v and a vectors
%% Coded by
% Mohamed Mohamed El-Sayed Atyya
% mohamed.atyya94@eng-st.cu.edu.eg
%% inputs:
% r : position vector (1x3) (m)
% v : velocity vector (1x3) (m/s)
% a : velocity vector (1x3) (m/s^2)
%% outputs:
% un, ut, ub : unit vectors
% an : acceleration normal component
% at : acceleration tangential component
% rho : radius of curvature
% rc : center of curvature postion vector
% -----------------------------------------------------------------------------------------------------------------------------------------------------------
ut=v/norm(v);
ub=cross(v,a)/norm([cross(v,a)]);
un=cross(ub,ut);
an=dot(a,un); % m/s^2
at=dot(a,ut); % m/s^2
rho=norm(v)^2/an; % m
rc=r+rho*un; % m
end

