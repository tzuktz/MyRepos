% clear all;
close all;
clc;

load('offmat');
% off_mat=off_mat*0;
[u,v]=meshgrid(linspace(-6.3014,6.3014,16),linspace(-6.9242,6.9242,20));
[U,V]=meshgrid(linspace(-6.3014,6.3014,16*2),linspace(-6.9242,6.9242,20*2));

off_crc=sqrt(sind(u).^2+sind(v).^2+1);

obj1 = tcpip('localhost', 2057);
set(obj1, 'Terminator', {'',''});
set(obj1, 'InputBufferSize', 1280);
set(obj1, 'ByteOrder', 'BigEndian');
fopen(obj1);
ii=1;
cmin=0.5; cmax=10;
% cmin=1/13; cmax=1/1;

fprintf(obj1, 'G');
data1 = double(fread(obj1,[16 20],'uint32'))./1000-off_mat;
Vq = interp2(u,v,data1',U,V,'cubic');
imagesc(Vq');
h=get(gca,'Children');
caxis([cmin cmax]) 
colorbar;
colormap jet(256);
colormap(flipud(colormap));
% cm=colormap;
% colormap([cm; cm]);

eps=0.5;

while ii<10000
tic
fprintf(obj1, 'G');
new_meas=double(fread(obj1,[16 20],'uint32'))./1000-off_mat;
data1 = data1*eps+(1-eps)*new_meas;
% data1=(data1-75e3)./1000;
Vq = interp2(u,v,data1',U,V,'cubic');
set(h,'CData',Vq');
drawnow; 
ii=ii+1;
% pause(2);
1/toc
end

fclose(obj1);

% image(mov(1).cdata);
% imageHandle = get(gca,'Children');


% for i=1:nFrames-1 
%     cur_mov=(mov(i+1).cdata);   
%     set(imageHandle ,'CData',cur_mov.*(sm2d-sma2d) + rsh0 + imlincomb(0.6,cur_mov.*sma2d,0.4,rsh1));
%     drawnow;   
% end
