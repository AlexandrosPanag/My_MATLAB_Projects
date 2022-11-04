%
% By Alexandros Panagiotakopoulos
%
D = load('Stashu Kozlowski DHM.mat');                                           % File Attached
x = D.x*500;
y = D.y*8;
y = detrend(y);                                                                 % Remove Linear Trend
yu = max(y);
yl = min(y);
yr = (yu-yl);                                                                   % Range of ‘y’
yz = y-yu+(yr/2);
zci = @(v) find(v(:).*circshift(v(:), [-1 0]) <= 0);                            % Returns Approximate Zero-Crossing Indices Of Argument Vector
zt = x(zci(y));
per = 2*mean(diff(zt));                                                         % Estimate period
ym = mean(y);                                                                   % Estimate offset
fit = @(b,x)  b(1) .* exp(b(2).*x) .* (sin(2*pi*x./b(3) + 2*pi/b(4))) + b(5);   % Objective Function to fit
fcn = @(b) norm(fit(b,x) - y);                                                  % Least-Squares cost function
[s,nmrs] = fminsearch(fcn, [yr; -10;  per;  -1;  ym])                           % Minimise Least-Squares
xp = linspace(min(x),max(x), 100);
figure
plot(x,y,'b', 'LineWidth',2)
hold on
plot(xp,fit(s,xp), '--r')
hold off
grid
xlabel('Time')
ylabel('Amplitude')
legend('Original Data',  'Fitted Curve')
