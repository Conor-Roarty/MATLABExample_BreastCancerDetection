%% This script creates a Hopfiled Network and then presents a given cue to check whether the Network outputs one of stored prototype memories.
%In Exercise-1, there are two prototype memories to be stored.
phi1 = [-1;	1;  -1];
phi2 = [1;  -1;  1]; 

%The cue vector to be presented is:
x   =   [-1; -1;  -1];

%%

%% Generate weights matrix for Hopfield network.

% Create a matrix phi that stores prototype momories as coloumn vectors.
phi    =    [phi1, phi2];

% Call the function CreateHopfieldNetwork to generate synaptic weight matrix
W = CreateHopfieldNetwork(phi)
%%

%% Present input cue x and check the network output as the network evolves.
Niterate    =   300;
[y] = Recall(W, x, Niterate);

%check whether the output matches with one of the prototype memories.
[nr, nc]=size(y);

for i=1:size(phi,2)
    difference=phi(:,i)-y(:, nc);
    if (difference==0)
        disp('Output matches with the prototype memory:')
        disp(i)
    end
end
%%