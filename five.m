n = linspace(0,199,200);
x = input('Enter a function x (with variable n): ');
y = zeros(size(n));

figure, plot(n, x, '-r', 'linewidth', 2)
hold on
grid on

for i = 1:200
    if i == 1 %since index cannot be zero
        f = -1.5*x(i) + 2*x(i+1) - 0.5*x(i+2);
    elseif (i > 1) && (i <= 199)
        f = 0.5*x(i+1) - 0.5*x(i-1);
    elseif i == 200
        f = 1.5*x(i) - 2*x(i-1) + 0.5*x(i-2);             
    end
    y(i) = f;
end

plot(n, y, '-.', 'linewidth', 2, 'markeredgecolor', 'g')
legend('x(n)', 'y(n)')
title 'Machine Problem 5'
xlabel 'x-axis'
ylabel 'y-axis'
