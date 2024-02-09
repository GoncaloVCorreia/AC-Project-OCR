 net = network(1,1,1,1,0,1);
 net.layers{1}.transferFcn = 'purelin';
 learnFunc = 'learngd'; 
 net.divideFcn='dividerand';
 net.trainFcn= 'traingda'; 
 net.adaptFcn = learnFunc;
 net.performFcn = 'mse';
 net.inputWeights{1,1}.learnFcn = learnFunc; 
 net.biases{1}.learnFcn = learnFunc; 
 net.trainParam.epochs = 1000; % maximum epochs

 [trainInd,valInd,testInd] = divideind(1000,1:850,850:1000);

 net = train(net,A,T10);

 W = net.IW{1,1};
 b = net.b{1,1};

 save ('Networks/linearNet.mat',  'net')
