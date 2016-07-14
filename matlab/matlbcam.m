% clear all;
close all;
clc;

vid = videoinput('winvideo', 1, 'RGB32_1280x1024');
src = getselectedsource(vid);
src.BacklightCompensation ='off';
src.BacklightCompensationMode = 'manual';
src.BrightnessMode = 'manual';
src.ContrastMode = 'manual';
src.ExposureMode = 'manual';
src.GainMode = 'manual';
src.VerticalFlip = 'on';
src.Exposure = -5;
vid.FramesPerTrigger = 1;
vid.TriggerRepeat = Inf;
triggerconfig(vid, 'manual');
start(vid);
ii=1;
koko=zeros(1024,1280,3);
koko1=zeros(size(koko(:,:,1)));
image(koko1);
colormap gray(256);
axis equal;
h=get(gca,'Children');
axis off;



   trigger(vid)
while ii<100;
tic
    koko = (getdata(vid));
    koko1=rgb2gray(koko);
    koko(:,:,1)=koko1;
    koko(:,:,2)=koko1;
    koko(:,:,3)=koko1;
   trigger(vid);
      set(h ,'CData',koko);
    drawnow; 
ii=ii+1;
1/toc
end

stop(vid);
