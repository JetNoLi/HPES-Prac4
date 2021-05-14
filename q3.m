At = 2.2*10^-6
Ae = 100*10^-6
Pc = 38000000
Pe = 655
gamma = 1.66;

sigFigures = 3

F = At*Pc*gamma*((2/(gamma-1))*(2/(gamma+1))*(1 - Pe/Pc)) + Pe*Ae

% print("F = " + str(F))

Fth = F*3


ge = 9.81
Gratio = 0.375
gm = Gratio * ge

% print("gm = " + str(gm))

m = 5 

Fg = m *gm

% print("Fg = " + str(Fg))

Fnet = Fth - Fg

% print("Fnet = " + str(Fnet))


maxPCBForce = 80 * ge

% print("Max Force PCB can Withstand = " + str(maxPCBForce))

difference = Fnet - maxPCBForce

% print("Fnet - maxPCBForce = " + str(difference))

