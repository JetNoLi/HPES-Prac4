function [a, F] = calculateAcceleration(timeStep)
  %constants
  At = 2.2 * 2 * 10^(-2*3);
  Ae = 100 * 100 * 10^(-2*3);
  Pe = 655;
  gamma = 1.66;   %gamma
  K = 0.0072;

  ge = 9.81
  Gratio = 0.375
  gm = Gratio * ge


  %output i.e. distance
  x = 0;

  % For t = 0 -> 90
  t = linspace(0,90,timeStep);
  dt = 90/timeStep;
  Pc = 90 * 10^3  % 90 kPa
  m1 = 2.5 - (2.3/90) .* t + 2.5
  

  Ft1 = At*Pc*gamma*((2/(gamma-1))*(2/(gamma+1))*(1 - Pe/Pc)) + Pe*Ae;

  Fg1 = gm .* m1;

  Fnet1 = Ft1 - Fg1;

  a1 = Fnet1 ./ m1

  a = a1;
  F = Fnet1;

  v0 = 0;
  
  for n = 1:length(t)

    x = x + v0*dt + 1/2 * (a(n) * dt^2)''

    v0 = v0 + a(n) * dt'
  end


  %Calculate until Fthrust = 0
  t = linspace(0,30, timeStep/3);
  Pc = 95000 * (2-exp(K * t));

  Fth = Ft1;
  n = 1;

  while ( Fth > 0)
    Fth = At*Pc(n) * gamma*((2/(gamma-1)) * ((2/(gamma+1))*(1 - Pe/Pc(n)))) + Pe*Ae
    n = n +1;
    
  end


end