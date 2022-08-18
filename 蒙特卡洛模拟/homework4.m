clear;clc

lights = [0, 0, 0, 0];
n = 1;
Stime = 100000000;

for hh = 1:n
    time = Stime;
    cost1 = 0;
    lights = randi([1000 2000], 1, 4);
    while time > 0
        minn = min(lights);
        time = time - minn;
        idx = find(lights == minn, 1);
        lights = lights - minn;
        lights(idx) = randi([1000 2000], 1, 1);
        cost1 = cost1 + 20 + 10;
    end
    
    time = Stime;
    cost2 = 0;
    while time > 0
        lights = randi([1000 2000], 1, 4);
        time = time - min(lights);
        cost2 = cost2 + 40 + 40;
    end
end
cost1
cost2