%% File for calculating tensions

clc, clear, close all;

% function [numStrings, pylonHeight, pylonWeight,...
%     pylonThickness, dBetweenPylons, numHangars, vol] = ...
%     bridgeInfo (pylonHeight)

height = 20; %pylon height (in)
width = 4; %width of pylon (in)
hangars = 4; %number of hangars
span = 4; %width of span (ft)
g = 9.8; %gravitational acceleration

if (span == 4)
    mass = 4; %mass for inner span (kg)
elseif (span == 6)
    mass = 6; %mass for inner span (kg)
end

mPerHangar = mass / hangars;
