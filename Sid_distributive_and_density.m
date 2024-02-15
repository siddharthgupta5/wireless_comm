clc
clear all
close all

mu = 0;
sigmas = [0.5, 1, 1.5]; 

x = linspace(-5, 5, 1000);

figure;
hold on;
for sigma = sigmas
    pdf = exp(-0.5 * ((x - mu) / sigma).^2) / (sigma * sqrt(2 * pi));
    plot(x, pdf, 'LineWidth', 2, 'DisplayName', ['\sigma = ' num2str(sigma)]);
end
title('Probability Density Function (PDF) of Gaussian Distribution');
xlabel('x');
ylabel('PDF');
legend;
hold off;

figure;
hold on;
for sigma = sigmas
    cdf = 0.5 * (1 + erf((x - mu) / (sigma * sqrt(2))));
    plot(x, cdf, 'LineWidth', 2, 'DisplayName', ['\sigma = ' num2str(sigma)]);
end
title('Cumulative Distribution Function (CDF) of Gaussian Distribution');
xlabel('x');
ylabel('CDF');
legend;
hold off;