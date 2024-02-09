net = patternnet(80);
net.layers{1}.transferFcn = 'logsig';
net.layers{2}.transferFcn = 'purelin';
net.layers{1}.name = 'Hidden';
net.layers{2}.name = 'Output';
net.performFcn = 'mse';
net.trainFcn = 'trainscg';
[trainInd,valInd,testInd] = divideind(1000,1:850,850:1000);
net.trainParam.epochs = 1000; 
net.trainParam.max_fail = 250; 


net = train(net,A,T10);

W = net.IW{1,1};
b = net.b{1,1};


save ('Networks/sigmoidlinearNet2layer.mat',  'net')
