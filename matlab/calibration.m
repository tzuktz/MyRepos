clear all;
close all;
clc;

%%% half FOC in horizontal axis 6.9242
%%% half FOC in vertical axis 6.3014



[u,v]=meshgrid(linspace(-6.3014,6.3014,16),linspace(-6.9242,6.9242,20));
off_crc=sqrt(sind(u).^2+sind(v).^2+1);
imagesc(off_crc);