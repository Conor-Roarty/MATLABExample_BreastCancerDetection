%% This script creates a Hopfiled Network and then presents a given cue to check whether the Network outputs one of stored prototype memories.
%In Exercise-4, there are three prototype memories to be stored.

%phi1
phi1 = [
        -1;	-1;  -1; -1; -1; -1; -1;
        -1;	 1;   1;  1;  1;  1; -1;
        -1;	 1;  -1; -1; -1;  1; -1;
        -1;	 1;  -1; -1; -1;  1; -1;
        -1;	 1;  -1; -1; -1;  1; -1;
        -1;	 1;  -1; -1; -1;  1; -1;
        -1;	 1;  -1; -1; -1;  1; -1;
        -1;	 1;   1;  1;  1;  1; -1;
        -1;	-1;  -1; -1; -1; -1; -1;
        ];

%phi2

%phi3


%The cue vector to be presented is:
%x   


%%

%% Generate weights matrix for Hopfield network.

% Create a matrix phi that stores prototype momories as coloumn vectors.
%phi    =    [phi1, phi2, phi3];

% Call the function CreateHopfieldNetwork to generate synaptic weight matrix
%W = CreateHopfieldNetwork(phi)

%%

%% Present input cue x and check the network output as the network evolves.
Niterate    =   300;

% use Recall to recall prototype memory. y = Recall(W, x, Niterate);

%check whether the output matches with one of the prototype memories.


%%