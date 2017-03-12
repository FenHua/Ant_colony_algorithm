function [sol]=AcatspEval(sol,distMatrix,numvars)
%计算适应度
%输入：sol -个个体
%输出L：该个体及其适应度val
val=sum(diag(distMatrix(sol(1:numvars),[sol(2:numvars) sol(1)])));
sol(numvars+1)=val;