%Syms be useful for math reasons.
%% 
quadratic(3,5,2)
%% 
%Look! Passing syms in as the variable gives me a symbolic answer.
syms a b c
quadratic(a,b,c)
%%
%Syms will somewhat simplify your equations and sum like-values together
syms x
equation = 5*x+40*x^2+6*x+10
%%
%We can build an equation, and get a solution! In this case the quadratic
%equation with both the plus and minus solutions.
syms a b c x
eqn = a*x^2 + b*x + c ==0
S = solve(eqn)
%%
%We can solve for a specific variable
Sa = solve(eqn,a)
%%
%We can solve a fifth degree polynomial if we want
eqn = x^5 == 3000
S = solve(eqn,x)