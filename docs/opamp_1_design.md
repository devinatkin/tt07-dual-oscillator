# Design Based on the Procedure Shown in Design of CMOS Opertional Amplifiers by Rasoul Dehghani
This design follows the two stage op-amp design procedure presented in the book.
Assumptions and Parameters are shown in as much detail as possible. Both for others to follow, as well as to help me catch my inevitable mistakes :).

## Process Parameters
Based on discussion in the discord the following parameters are assumed for the Sky130A Process.
| Parameter | NMOS | PMOS |
|:----------|:-----|------|
|uCox (uA/V^2) | 511 | 128 |

## Target Specifications
- w_u (Unity Gain Frequency) >= 2 * pi * 50Mhz
- SR (Slew Rate) >= 10V/us
- Av_0 (DC Voltage Gain) >= 5000
- C_l (Load Capacitance) = 5pF
- PM (Phase Margin) >= 60 deg
The most important parameter is the load capacitance and the unity gain frequency, considering I Intend to use this op-amp as a unity gain buffer for my analog output pins. 

## Design Process

1. Determine the compensation capacitor value. This ends up being an initial value and will be fine tuned.
C_c = 0.4 * C_l
This gives 2pF as a starting value for C_l

2. Calculate g_m1 and g_m6.

w_p2 = g_m6/ C_l
This is the equation for the op amps second pole. Using the desired phase margin, and the desired unity gain bandwidth we can calculate what the pole should be, and thus what g_m6 should be.
This is because the second pole determines the phase margin and therefore we can work backwards towards a design.

For a 60 degree phase margin (Which was chosen because no spec set a hard limit on it, and that's what's used in all the examples) the equation for second pole can be reduced to:
w_p2 >= sqrt(3) * w_u
(The full equation is PM = 90deg - tan^-1(w_u/w_p2) )

Based on this we can calculate gm_6 >= sqrt(3) * w_u * C_l ... gm_6 >= 2.720699046mA/V


The equation for determining g_m1 is quite similar w_u= g_m1/C_c, we then get g_m1 = w_u * C_c, this gives 628.3185307uA/V

The two elements valculated are 2.72mA/V and 628uA/V

3. Calculate the Tail Bias Current. 
This is going to be the larger of two calculated values dependent on what the exact calculations.
I_o = C_c * SR = 2pF * 10V/uS = 20uA

The transistors may operate in subthreshold if ones not careful leading to the second calculation.
In subthreshold the equation for g_m1 becomes g_m1= I_o/2EV_th. Where the E is the subthreshold factor which I've taken to be 1.4 and the V_th is the thermal voltage (I note this because I got mixed up and thought v_th was the threshold voltage before remembering...)

This second equation gives us I_o = 2*E*V_th*g_m1 = 2*1.4*26mV*628uA/V. This gives us 45.7184uA. To give some leeway we can go upto 60uA.

This round up helps when not operating quite a the center point, as well as adding leeway for things like variation in that current without the input transistors dropping to subthreshold region.

Also to note, as I'm not aiming to push for an exceptionally small design, I'll likely choose longer transistors to avoid short channel effects to a large extent. This will also help somewhat with the first stage gain.

4. Calculate the Size of the Input stage of the Op Amp.

We can use the equation for g_m: g_m1,2 = sqrt(u_nC_ox (W/L)1,2 I_o) * a
a we'll take as 0.9 given we'll have minimal short channel effects. 

Doing so with our greater 60uA I arrive at a (W/L) for the input paid > 15.804. We can choose W/L = 20. 
We'll assume a length of 1um, giving us a width of 20um for the two input mosfets (M1, M2)


5. Determine a Size for the Active Load. To do this is a little less sytematic than the earlier steps. 

- We'll target an overdrive voltage of ~0.2V
- Use the equation for I_sat_ to get the value of the (W/L). The current based on the tail current will be 30uA. I_sat_=1/2 * u_p_C_ox_ * (W/L) * (V_ov_)
- Plugging this in we get (W/L) >= 11.718. We'll shoose (W/L) = 14 to calculate out fet size. 

We'll assume a length of 0.5 for the mosfets, giving us a width of 7.

6. Determine a minimum size for the Tail current transistor. We'll target a lower overdrive voltage than before in order to maximize the range available.
I calculated a minimum of 10.4 so we can size up as much as we want to make a more stable current source. 

7. We now need to calculate the size of the output transistors. 

We can calculate g_m3_ from g_m3_ = a* sqrt(u_p_C_ox_(W/L)_3_I_o_). Giving 0.295mA/V.
Because g_m6_/g_m3_ = (W/L)_6_ / (W/L)_3_ and we have already calculated g_m6_ = 2.72mA/V,
we now know (W/L)_6_ = (W/L)_3_ * g_m6_ / g_m3_ = 14* (2.72/0.295) = 129

From the ratio (W/L)_6_ / (W/L)_3_ = 2 (W/L)_7_ / (W/L)_5_
(W/L)_7_ / (W/L)_5_ = 4.6101
Given I currently have (W/L)_5_ = 40, I can then set (W/L)_7_ = 184.4

8. We now need to determine a value for R_c and implement it using a Triode region Mosfet.
R_c_ = (1/g_m6_)(1 + (C_l_/C_c_) = 1.18Kohm
