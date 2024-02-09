function [Y] = binary_percept(data)
load('T.mat')
load('A.mat')
net =perceptron;
net.layers{1}.size = 256; 
net.layers{1}.transferFcn = 'hardlim';
learnFunction = 'learnp'; 
net.inputWeights{1,1}.learnFcn = learnFunction; 
net.biases{1}.learnFcn = learnFunction; 
net.trainParam.epochs = 1000; 

[trainInd,valInd,testInd] = divideind(1000,1:850,850:1000);

%net= train(net,A,T);
load('binarypercept.mat');
%P=load('TesteDataSet/PTest1.mat') %P.P

Y=sim(net,data);

save 'binarypercept.mat'  net