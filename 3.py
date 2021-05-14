## Question 3.1

At = (2.2*2.2)*10**-6
Ae = (100*100)*10**-6
Pc = 38000000
Pe = 655
gamma = 1.66

sigFigures = 3

F = round(At*Pc*gamma*((2/(gamma-1))*(2/(gamma+1))*(1 - Pe/Pc)) + Pe*Ae, sigFigures -1)   #F for single thruster

print("F = " + str(F))

Fth = round(F*3, sigFigures -1) #Fth for combined thrust force

print("Fth = " + str(Fth))

ge = 9.81
Gratio = 0.375
gm = round(Gratio * ge, sigFigures -1)  #gravity on mars

print("gm = " + str(gm))

m = 5 #Mass of Rover

Fg = round(m *gm, sigFigures -1)

print("Fg = " + str(Fg))

Fnet = round(Fth - Fg, sigFigures -1)

print("Fnet = " + str(Fnet))

a = round(Fnet/m, sigFigures -1)

print("a = " + str(a))

maxPCBForce = round(80 * ge, sigFigures -1) #Max force PCB can withstand

print("Max Force PCB can Withstand = " + str(maxPCBForce))

difference = round(Fnet - maxPCBForce, sigFigures -1)

print("Fnet - maxPCBForce = " + str(difference))


##Question 3.2
