
function W = CreateHopfieldNetwork(phi)
%This function generates weight matrix of Hopfiled network.
%Inputs:
%       phi: A matrix of memory points arranged as coloumn vector.
%Outpts:
%       W: A matirx of weights with zeroed diagonal elements assuming zero thresholds.

[n, r]   =   size(phi);
W   =   zeros(n);
for i   =   1:r
    W   =   W + (1/n)*phi(:,i)*phi(:,i)';
end
W   =   W - (r/n)*eye(n);

