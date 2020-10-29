
function [y] = Recall(W, x, Niterate)
%A function to present memory patterns to a given Hopfield network.
%Input:
%       W: A matirx of weights with zeroed diagonal elements assuming zero thresholds.
%       x: A vector of memory pattern.
%       Niterate:Number of interations for asynchronous state update. 
%Output:
%       y:     A matrix  containing evoving memory patterns during update.


%Find the width of the memory in number of bits n.
n=size(x,1);

% Set the size of y so that state updates for (Niterate) iterations could be stored. 
%y	=	zeros(n, Niterate); 

%Store the initial state.
y(:,1)	=	x;  

%Initialise the update index.
i=1;

%Set initial value of the last state vector different from the initial states.
x_k_1 = x+1;

%Initialise a vector to store random sequence for asynchronous state update.
indices=zeros(1, n);

%Start asynchronous state update.
while (sum(x_k_1 ~= x))             %Terminate when stable state has been obtained.
       x_k_1 = x;          
       
       % Find a random sequence in which states are to be updated. Store the sequence in the vector indices.
        
        indices=randperm(n);
        
        % Update the states asynchronously using the sequence stored in indices.
        k=1;
        while (k<=n)
            j=indices(1,k);
            i=i+1;                  %Incrment the index for update.        
            disp('Updating state:');
            disp(j);
            net	=	W(j,:)*x;  
            if net ~= 0  
                x(j,:)	= hardlim(net)-hardlim(-net);  
		    end
            
            %Store the updated states.
            y(:,i) =	x;               
 
            %Display states.
            disp('state updates are:')
            disp(y(:,1:i));
            k=k+1;
            
        end    
        indices =   0*indices;

end 

