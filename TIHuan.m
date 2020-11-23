%重命名文件名，读取文件名和扩展名，修改为自己的文件名
clear 
clc
files=dir('*.segd');
len=length(files);
a=[20 20 20 10 10 10 32 32 32 26 26 26 2 2 2 29 29 29 33 33 33 7 7 7 3 3 3 13 13 13 16 16 16 17 17 17 21 21 21 5 5 5  19 19 19 25 25 25 18 18 18 14 14 14 28 28 28 8 8 8 9 9 9 23 23 23 15 15 15 22 22 22 11 11 11 1 1 1 30 30 30 31 31 31 34 34 34 4 4 4 12 12 12 27 27 27 6 6 6 24 24 24];
for i=1:len
    oldname=files(i).name;
    newname=strcat(num2str(a(i)),'-',oldname(1:end));
    command=['rename' 32 oldname 32 newname];
    status=dos(command);
    if status==0
        disp([oldname,'已被重新命名为',newname]);
    else
        disp([oldname,'命名失败']);
    end
end