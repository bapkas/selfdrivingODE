clear

v_max = 25;
d = 75;

t0 = 0;
t_n = 40;
n = 1000;
h = (t_n-t0)/n; % Steglängd/tidssteget/dt

M = 10; % Antal bilar

x0 = ones(1, M); % Begynnelsevärden, y vid t0
for i=1:M
    x0(i) = x0(i) * d * i;
end

% Funktion som beräknar hastigheten givet positioner x
f = @(x)[arrayfun(@hastighet, x(2:end)-x(1:end-1)) 5];

t = t0:h:t_n;
x = zeros(length(t), length(x0)); 
x(1, :) = x0;

% Eulers metod:
for k=1:n
    x(k+1, :) = x(k, :) + h*f(x(k,:));
end

% Plot
for k=1:n
    plot(x(k,:),zeros(1,M),'r*');
    axis([0 1000 -1 1])
    drawnow
    pause(h)
end
