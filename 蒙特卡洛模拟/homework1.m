
% 打乱的次数
n = 1e5;
% 人数
m = 1e3;
% 记录所有人都没拿到自己的卡片的次数
cnt = 0;

for j = (1:n)
    flag = 1;
    % 模拟打乱后的信件
    after = randi([1 m], 1, m);
    
    for i = (1:m)
        if after(i) == i
            flag = 0;
        end
    end

    if flag == 1
        cnt = cnt + 1;
    end
end

% 计算不一样的次数
hh = sum(cnt);
disp(n / hh);