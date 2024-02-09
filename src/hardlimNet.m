%HARDLIM
 net = network(1,1,1,1,0,1);
 net.trainFcn='trainc';
 net.layers{1}.transferFcn = 'hardlim';
 learnFunc = 'learnp'; 
 net.adaptFcn = learnFunc;
 net.performFcn = 'sse';
 net.inputWeights{1,1}.learnFcn = learnFunc; 
 net.biases{1}.learnFcn = learnFunc; 
 net.trainParam.epochs = 1000; 
 net.divideFcn = 'dividerand'; 

 [trainInd,valInd,testInd] = divideind(1000,1:850,850:1000);
load('A.mat');
load('T10.mat');
net = train(net,A,T10)

W = net.IW{1,1}
b = net.b{1,1}

save 'Networks/netHardLim.mat'  net