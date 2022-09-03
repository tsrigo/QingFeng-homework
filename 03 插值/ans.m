clear;clc;
load no4_xls.mat;
x = 1:2:15;
y = test;   % 123
[r, c] = size(y);
p1 = zeros(r, c * 2 - 1);
p2 = zeros(r, c * 2 - 1);
% no1 and no2 方便作图
% ylab={'轮虫','溶氧','COD','水温','PH值','盐度','透明度','总碱度','氯离子','透明度','生物量'};  % 等会要画的图形的标签
% 实际上应该用下面这个，方便赋值粘贴
% ylab = {"叶绿素A","叶绿素B","叶绿素C","轮虫","溶氧","COD","水温","PH值","盐度","透明度","CA2+","MG+","总碱度","氯离子","溶氧","生物量"};
% no3 and no4
ylab={'叶绿素A','叶绿素B','叶绿素C','轮虫','溶氧','COD','水温','PH值','盐度','透明度','总碱度','CA2+','MG+'};

for i = (1 : r)
    new_x = 1:15;
    p1(i, :) = pchip(x, y(i,:), new_x);
    p2(i, :) = spline(x,y(i,:), new_x);
    % no1, no2
    % subplot(4,3,i)
    % no3, no4
    subplot(5,3,i)
    plot(x,y(i, :),'o',new_x,p1(i, :),'r-',new_x,p2(i, :),'b-');
    ylabel(ylab(i));
end
legend('样本点','三次埃尔米特插值','三次样条插值','Location','SouthEast') %标注显示在东南方向
