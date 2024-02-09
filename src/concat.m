load('PerfectArial.mat');
load('TrainDataSet/P1.mat')
P1=P;
load('TrainDataSet/P2.mat')
P2=P;
load('TrainDataSet/P3.mat')
P3=P;
load('TrainDataSet/P4.mat')
P4=P;
load('TrainDataSet/P5.mat')
P5=P;
load('TrainDataSet/P6.mat')
P6=P;
load('TrainDataSet/P7.mat')
P7=P;
load('TrainDataSet/P8.mat')
P8=P;
load('TrainDataSet/P9.mat')
P9=P;
load('TrainDataSet/P10.mat')
P10=P;
load('TrainDataSet/P11.mat')
P11=P;
load('TrainDataSet/P13.mat')
P13=P;
load('TrainDataSet/P14.mat')
P14=P;
load('TrainDataSet/P15.mat')
P15=P;
load('TrainDataSet/P16.mat')
P16=P;
load('TrainDataSet/P17.mat')
P17=P;
load('TrainDataSet/P18.mat')
P18=P;
load('TrainDataSet/P19.mat')
P19=P;
load('TrainDataSet/P20.mat')
P20=P;
load('TrainDataSet/P21.mat')
P21=P;

T10=repmat(eye(10),1,100);
T500=repmat(eye(10),1,50);
T250=repmat(eye(10),1,25);

A=[P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P13,P14,P15,P16,P17,P18,P19,P20,P21];
A500=[P1,P2,P3,P21,P20,P19,P18,P17,P16,P15]
A250=[P1,P2,P3,P21,P20]

T=repmat(Perfect,1,100);

save T.mat T
save A.mat A
save T10.mat T10
