% clear all;
close all;
clc;
% stop(vid);
% fclose(obj1);
%%%%%%%%%%%%%%% INITIALIZING THE TCP/IP
obj1 = tcpip('localhost', 2057);
set(obj1, 'Terminator', {'',''});
set(obj1, 'InputBufferSize', 1280);
set(obj1, 'ByteOrder', 'BigEndian');
fopen(obj1);
fprintf(obj1, 'G');
data1 = fread(obj1,[16 20],'uint32');

imagesc(data1);

set(gca,'Position', [0.1174    0.1100    0.6998    0.8150]);
hl=get(gca,'Children');
axis off;
colorbar('Ticks',[0,1,2,3,4,5,6]);
%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%% INITALIZING THE CAMERA
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
figure;
koko=zeros(1024,1280,3);
koko1=zeros(size(koko(:,:,1)));
image(koko1);
set(gca,'Position', [0.1300    0.1100    0.7750    0.8150]);
h=get(gca,'Children');


% colormap gray(256);
axis equal;
axis off;
trigger(vid);
%%%%%%%%%%%%%%%



ii=1;


% colormap jet(256);

while ii<1500
tic
fprintf(obj1, 'G');
data1 = fread(obj1,[16 20],'uint32');
data1=(data1-80000)/1000;
set(hl ,'CData',fliplr(data1));

hold off;
%  surfc(12-data1)
drawnow; 
% pause(0.2);
    koko = (getdata(vid));
    trigger(vid);
    koko1=rgb2gray(koko);
    koko(:,:,1)=koko1;
    koko(:,:,2)=koko1;
    koko(:,:,3)=koko1;
    set(h ,'CData',koko);
drawnow; 
ii=ii+1;
1/toc
end
fclose(obj1);
stop(vid);