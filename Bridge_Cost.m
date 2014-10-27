%Number of Strings vs Pylon Height analysis
%N_S is the number of Strings
%H is the height of the Pylon in centimeters H<=61 cm
%W is the width of the pylon in centimeters, W<=10.1 cm
%T is the thickness of the pylonin centimeters, T=0.3,0.6 cm
%V is the volume missing from the pylons due to cut outs in cm^2
%N_H is the number of hangars, N_H>=3
%S is distance between the pylons in feet, S=4,6 ft
%Aesthetic is whether or not we win the aesthetic prize: If we get first
%prize Aesthetic=25, if we get second prize Aesthetic=10, if we do not win
%the priz Aesthetic=0

function Cost=Bridge_Cost(N_S,H,W,T,S,N_H,V,Aesthetic)

%Cost of the hangars
Cost_Hangars=5*N_H+(S/(N_H+1))/40;

%Cost of the strings
Cost_Strings=10*sum(fib(N_S));

%TESTING yaaaayyyyyy

%Cost of the Pylons
Cost_Pylons=H*W*T-V;

%Cost of the Distance between the Pylons
Cost_Distance=(S==4)*40+(S==6)*10;

%suming the total cost
Cost=Cost_Hangars+Cost_Strings+Cost_Pylons+Cost_Distance-Aesthetic;