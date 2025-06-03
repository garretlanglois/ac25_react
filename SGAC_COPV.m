% ------
%  COPV Characteristics
% ------

% How much gas is needed for the COPV
V_shelter = 2.54;        % [m^3]
P_shelter = 29.384;      % [kPa]
Q_use = 0.045;           % [kg/h] of 02 0.75L/min
t_operation = 4;         % [h]
T_shelter = 291;         % [K] or 18 deg C
P_COPV = 34473;          % [kPa] at Maximum Design Pressure
T_COPV = T_shelter;      % Assuming COPV is inside the shelter
M_O2 = 0.032;            % [kg/mol]
R_O2 = 8.314/1000;       % [kJ/molK] or 0.26 [kJ/kg*K]
% https://www.engineeringtoolbox.com/specific-heat-capacity-gases-d_159.html

V_total = Q_use*T_shelter   % total oxygen needed over the entire operation
n_total = P_shelter*V_total/(R_O2*T_shelter)

V_COPV = (P_shelter*V_total*T_shelter)/(P_COPV*T_COPV)
V_COPVfinal = V_COPV*1.3
n_final = n_total*1.3

n_COPV = (P_COPV*V_COPVfinal)/(R_O2*T_COPV)

m_O2 = n_COPV*M_O2