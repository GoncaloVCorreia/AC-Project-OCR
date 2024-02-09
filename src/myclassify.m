function [Y]= myclassify(data,data_filled) 

FCH=load('FilterCh.mat');
if(FCH.filterChoice==0)
    disp('entrei filtro 0')
end
if(FCH.filterChoice==1)
    disp('entrei filtro 1')
    data=filterAssMem(data);
end
if(FCH.filterChoice==2)
    disp('entrei filtro 2')
    data=binary_percept(data);

end

NCH=load('NetworkCh.mat');
if(NCH.networkChoice==0)
    disp('entrei net 0')
    load('Networks/sigmoid.mat');
end
if(NCH.networkChoice==1)
    disp('entrei net 1')
    load('Networks/logsigsoftNet2layer.mat');
end
if(NCH.networkChoice==2)
    disp('entrei net 2')
    load('Networks/linearNet.mat');
end
if(NCH.networkChoice==3)
    disp('entrei net 3')
    load('Networks/sigmoidNet2layer.mat');
end

Y = sim(net,data(:,data_filled));

[M,I]=max(Y);
Y=I;
end

