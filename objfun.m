function f = objfun(xC,xI,ext_param)

% Example problem 1: Branin function (2D)
X = [xI;xC];
a = 1;b = 5.1/(4*pi^2);c = 5/pi;d = 6;e = 10;ff = 1/(8*pi); 
f = (a*( X(2) - b*X(1)^2 + c*X(1) - d )^2 + e*(1-ff)*cos(X(1)) + e); 

% % Example problem 2: Griewank function (ND)
% x = [xI;xC];
% f1=0;f2=1;
% for ii=1:length(x)
%     f1 = f1 + x(ii)^2/4000;
%     f2 = f2*cos(x(ii)/sqrt(ii));
% end
% f = 1*(f1 - f2 + 1);

   