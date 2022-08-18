clear;clc
% ����ת�ƾ���
pos = [
    0.65 0.20 0.10 0.05 0.00;
    0.25 0.40 0.20 0.10 0.05;
    0.10 0.20 0.40 0.20 0.10;
    0.00 0.10 0.30 0.40 0.20;
];
pos = pos .* 100;

% ����ת�Ƶ���״̬
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

% ��ʼ״̬���󣨼��� size �Σ�
size = 1000000;
state = ones(1, size);

% ��ʼ��������
count = zeros(1, size);

for i = 1:size
    while state(i) ~= 5
        % ���ѡ��һ��״̬
        choose = randi(100);
        % ���ݸ���ת�ƾ���ת�Ƶ���һ��״̬
        state(i) = pos2(state(i), choose);
        count(i) = count(i) + 1;
    end
end

% �����ֵ
value = mean(count) * 10000;
disp(value)