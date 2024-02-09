function run(filter,network)
    concat();
    %hardlimNet();
    %linearNet();
    %sigmoidNet();
    %linearNet2layers();
    %sigmoidNet2layers();
    %linearsigmoidNet2layers();
    %sigmoidlinearNet2layers();
    %linear_soft();
    %logsig_soft();
    %filterAssMem();
    %binary_percept();
    filter
    network
    filterChoice=0;
    networkChoice=0;
    if(strcmp(filter,'None')==1)
        filterChoice=0;
    end
    if(strcmp(filter,'Associative Memory')==1)
        filterChoice=1;
    end
    if(strcmp(filter,'Binary Perceptron')==1)
        filterChoice=2;
    end
    if(strcmp(network,'Sigmoid')==1)
        networkChoice=0;
    end
    if(strcmp(network,'Linear')==1)
        networkChoice=2;
    end
    if(strcmp(network,'Sigmoid_Sigmoid')==1)
        networkChoice=3;
    end
    if(strcmp(network,'Sigmoid_Softmax')==1)
        networkChoice=1;
    end
    save FilterCh.mat filterChoice;
    save NetworkCh.mat networkChoice;
    mpaper();
    
    
    
