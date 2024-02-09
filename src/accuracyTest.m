P=load('TesteDataSet/PTest1.mat') %P.P

%P=load('assmem.mat');  %P.Filtrd

%P=load('binarypercept.mat') %P.Y?

filled_inx = find( sum(P.P) ~= 0);
if isempty(filled_inx), return; end
y = -ones(1,length(P.P)); 
datainp=P.P;
save P.dat datainp 
save index.dat filled_inx 
Y= myclassify(P.P,filled_inx);

y(filled_inx)=Y;

result=[];
target=repmat(eye(10),5);
row=1;
column=1;
while(y(row,column)~=-1)
    result= [result y(row,column)];
    column=column+1;
    
end

t=[1 2 3 4 5 6 7 8 9 10];
target= [t t t t t];

correct=0;
[r,c]=size(result);
for i=1:c
    if(result(i)==target(i))
        correct=correct+1;
    end
end


accuracy=correct/c



