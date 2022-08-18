clear;clc
% 概率转移矩阵
pos = [
    0.65 0.20 0.10 0.05 0.00;
    0.25 0.40 0.20 0.10 0.05;
    0.10 0.20 0.40 0.20 0.10;
    0.00 0.10 0.30 0.40 0.20;
];
pos = pos .* 100;

% 可能转移到的状态
pos2 = zeros(4, 100);
for i = 1:4
    idx = 1;
    for j = 1:5
        k = pos(i, j);
        for u = 1:k
            pos2(i, idx) = j;
            idx = idx + 1;
        end
    end
end

% 初始状态矩阵（计算 size 次）
size = 1000000;
state = ones(1, size);

% 初始计数矩阵
count = zeros(1, size);

for i = 1:size
    while state(i) ~= 5
        % 随机选择一个状态
        choose = randi(100);
        % 根据概率转移矩阵转移到下一个状态
        state(i) = pos2(state(i), choose);
        count(i) = count(i) + 1;
    end
end

% 计算价值
value = mean(count) * 10000;
disp(value)