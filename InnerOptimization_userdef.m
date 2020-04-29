function [xC_opt,obj,g,eflag,funCount] = InnerOptimization_userdef(x0I, ext_param)
%% Define the inner optimization problem with x0I as parameters
% Define this function if you want to use an external/another solver to
% solve the inner optimization problem other than fmincon of MATLAB

%% Inputs:
% x0I (datatype integer matrix of size n x m) Set of variables of the outer
% optimization that are kept constants in the inner optimization. There are
% n data points, each with dimension of m, where m = length(xI_lb)

% ext_param (datatype struct) This structure variable encasulates all the
% variables needed in the inner optimization (to be defined in the
% problem_setup.m file)

%% Outputs:
% xC_opt (datatype numeric matrix of size n x p) Optimal value of the
% variables of the inner optimizaition

% obj (datatype numric vector of size n x 1) Optimal value of the objective
% function of the original problem for each data point in n

% g (datatype numeric marix of size n x q) Value of the constraints at the
% solution. There are q constraints in the original problem

% eflag (datatype integer) Exit status of the continuous optimization. Set
% this to 1 if the continuous optimization converged. Else set this to 0. 

% funCount (datatype integer) Total number of function evaluations during
% the inner optimization (if available, else set this to 0)
%% Initialize
xC_opt = []; obj =[]; g=[];eflag =[]; funCount=[];

%% Add the code here

