X = [0; 0];
% ��������
f = @(x1, x2) 2 * x1^2 + x2^2 - x1 * x2 - 8 * x1 - 3 * x2;
format long

% ��������
n = 1e6;
% ��ʼ�� ��
minn = 0x3f3f3f3f;
ansX = [0; 0];

for hh = 1:n
    X(1) = rand(1) * 16;
    X(2) = rand(1) * 8;
    if f(X(1), X(2)) < minn
        minn = f(X(1), X(2));
        ansX = X;
    end
end

disp(ansX)
disp(minn)
