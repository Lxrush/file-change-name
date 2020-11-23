%合并文件
%合并3个txt，为3列E,N,Z
function hebin()
clc
clear
list=dir(['C:\Users\Lx\Desktop\txt\','*.txt']);%遍历转换好的txt文件
list_name=sort_nat({list.name})%进行十进制排序，变成1,2,3,4的顺序,网上有教程
n=length(list);
j=1;m=1;%定义初始化参数
for i=1:n/3
        A=dlmread(strcat('C:\Users\Lx\Desktop\txt\',list_name{m}));%转换成一列txt后导入A中
        m=m+1;
        B=dlmread(strcat('C:\Users\Lx\Desktop\txt\',list_name{m}));
        m=m+1;
        C=dlmread(strcat('C:\Users\Lx\Desktop\txt\',list_name{m}));
        m=m+1;
        out=[A B C];
        filename=strcat('C:\Users\Lx\Desktop\txtzuizong\',num2str(j),'.txt')
        dlmwrite(filename,out,'delimiter',' ','precision', '%.10f');%顺序为E,N,Z,每3个文件合并为一个,后面为行列数，
        j=j+1;
end 
