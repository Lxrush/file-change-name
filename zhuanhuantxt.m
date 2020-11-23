clc
clear
%  A=dlmread('1-E.dat');
%  dlmwrite('1-E.txt',A,'\n');%单个转换例子
list=dir(['C:\Users\Lx\Desktop\yichundat\','*.DAT']);%遍历文件
list_name=sort_nat({list.name})%进行十进制排序，变成1,2,3,4的顺序
n=length(list);
for i=1:n
    str=strcat('C:\Users\Lx\Desktop\yichundat\',list_name{i});
    A=dlmread(str);
    filename=strcat('C:\Users\Lx\Desktop\txt\',num2str(i),'.txt')
    dlmwrite(filename,A,'precision', '%.10f');%将DAT文件转换为txt文件
    %文件从上到下顺序为1-E,1-N,1-Z，2-E......保留小数点后10位
end
hebin(); %合并数据，变为三列分别为E N Z