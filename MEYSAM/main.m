clear all
close all
clc

parameter.freq = [2.58e9 2.62e9]; % starting parameter.freq. - ending freq. [Hz]
parameter.snapNum = 4; % number of snapshots (given parameter.MSVelo, cover about .25 m)
parameter.snapRate = 1;
parameter.elipsAxisX = 0.25;
parameter.elipsAxisY = 0.8;
parameter.MSPos = [0,10,0];  % AT THE MOMENT I HAVE JUST ONE ILLUMINATOR - BUT I NEED TO EXTEND THIS TO MULTIPLE ILUMINATOR ==> THEN I NEED TO ADD ONE MORE DIMENSSION FOR AntNotBlocked
parameter.MSVelo = [0,0,0];
parameter.ObsPos = [-2,5,0;...           % two users
    -2,7,0];
parameter.ObsVelo = [1,0,0;...
    2,0,0];
parameter.BSPosCenter  = [0 0 0]; % center position of BS array [x, y, z] (m)
parameter.BSPosSpacing = [0.05 0 0]; % inter-position spacing (m), for large arrays.
parameter.BSPosNum = 100; % number of positions at each BS site, for large arrays.

parameter.c_lightSpeed = 3e8;

%%
plot_Env=true;
[AntNotBlocked,LOS_channels,LOS_delay_ampl] = GenerateChannel(parameter,plot_Env);



% for i =1:10 % write a loop to create channels for RIGHT to LEFT moving with random speed
%     plot_Env=true;
%     [AntNotBlocked,LOS_channels,LOS_delay_ampl] = GenerateChannel(parameter,plot_Env);
% end
% 
% 
% for i =1:10 % write a loop to create channels for LEFT to RIGHT moving with random speed
%     plot_Env=true;
%     [AntNotBlocked,LOS_channels,LOS_delay_ampl] = GenerateChannel(parameter,plot_Env);
% end




