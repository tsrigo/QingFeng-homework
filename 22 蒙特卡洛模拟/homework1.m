
% ���ҵĴ���
n = 1e5;
% ����
m = 1e3;
% ��¼�����˶�û�õ��Լ��Ŀ�Ƭ�Ĵ���
cnt = 0;

for j = (1:n)
    flag = 1;
    % ģ����Һ���ż�
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

% ���㲻һ���Ĵ���
hh = sum(cnt);
disp(n / hh);