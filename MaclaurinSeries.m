syms x;

% the function f(x)
f = sin(x)/x;
nnumb = 5;

maclaurinSeries = taylor(f, x, 'Order', nnumb);

xValues = linspace(-10, 10, 1000);

yValues = double(subs(f, x, xValues));
maclaurinApproximation = double(subs(maclaurinSeries, x, xValues));

figure;
plot(xValues, yValues, 'b', 'LineWidth', 2, 'DisplayName', 'f(x)');
hold on;
plot(xValues, maclaurinApproximation, 'r--', 'LineWidth', 2, 'DisplayName', 'Maclaurin Approximation');
title('Maclaurin Series Approximation for f(x) = sin(x)/x');
xlabel('x');
ylabel('y');
legend('show');
grid on;
