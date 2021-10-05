function deteksi_tepi
f = figure('Name','Deteksi Tepi','MenuBar','none',...
    'ToolBar','none','NumberTitle','off','Position',[250 130 800 500]);
 
tgroup1 = uitabgroup('Parent', f);
tab1 = uitab('Parent', tgroup1, 'Title', 'Operator Gradien');
tab2 = uitab('Parent', tgroup1, 'Title', 'Operator Laplacian');
tab3 = uitab('Parent', tgroup1, 'Title', 'Operator Canny');
 
tgroup2 = uitabgroup('Parent', tab1);
tab4 = uitab('Parent', tgroup2, 'Title', 'Gradien Orde Satu');
tab5 = uitab('Parent', tgroup2, 'Title', 'Selisih Terpusat');
tab6 = uitab('Parent', tgroup2, 'Title', 'Roberts');
tab7 = uitab('Parent', tgroup2, 'Title', 'Prewitt');
tab8 = uitab('Parent', tgroup2, 'Title', 'Sobel');
tab9 = uitab('Parent', tgroup2, 'Title', 'Isotropic');
tab10 = uitab('Parent', tgroup2, 'Title', 'Compass');
tab11 = uitab('Parent', tgroup2, 'Title', 'Kirsch');
 
ax1 = axes('Parent',tab4,'Position',[.2 .53 .25 .4]);
ax2 = axes('Parent',tab4,'Position',[.55 .53 .25 .4]);
ax3 = axes('Parent',tab4,'Position',[.2 .1 .25 .4]);
ax4 = axes('Parent',tab4,'Position',[.55 .1 .25 .4]);
 
I = double(imread('sejarah 1.jpg'));
% Gradien orde satu pada arah horizontal
gx = [-1 1];
I1 = conv2(I,gx,'same');
% Gradien orde satu pada arah vertikal
gy = [-1;1];
I2 = conv2(I,gy,'same');
% Magnitudo gradien
J = sqrt((I1.^2)+(I2.^2));
% Gambar hasil
axes(ax1)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax2)
imagesc(I1),axis image,colormap gray,colorbar,title('Gradien arah horizontal');
axes(ax3)
imagesc(I2),axis image,colormap gray,colorbar,title('Gradien arah vertikal');
axes(ax4)
imagesc(J ),axis image,colormap gray,colorbar,title('Magnitudo gradien');
 
ax5 = axes('Parent',tab5,'Position',[.2 .53 .25 .4]);
ax6 = axes('Parent',tab5,'Position',[.55 .53 .25 .4]);
ax7 = axes('Parent',tab5,'Position',[.2 .1 .25 .4]);
ax8 = axes('Parent',tab5,'Position',[.55 .1 .25 .4]);
 
I = double(imread('sejarah 1.jpg'));
% Gradien orde satu pada arah horizontal
gx = [-1 0 1];
I1 = conv2(I,gx,'same');
% Gradien orde satu pada arah vertikal
gy = [-1;0;1];
I2 = conv2(I,gy,'same');
% Magnitudo gradien
J = sqrt((I1.^2)+(I2.^2));
% Gambar hasil
axes(ax5)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax6)
imagesc(I1),axis image,colormap gray,colorbar,title('Gradien arah horizontal');
axes(ax7)
imagesc(I2),axis image,colormap gray,colorbar,title('Gradien arah vertikal');
axes(ax8)
imagesc(J ),axis image,colormap gray,colorbar,title('Magnitudo gradien');
 
ax9 = axes('Parent',tab6,'Position',[.2 .53 .25 .4]);
ax10 = axes('Parent',tab6,'Position',[.55 .53 .25 .4]);
ax11 = axes('Parent',tab6,'Position',[.2 .1 .25 .4]);
ax12 = axes('Parent',tab6,'Position',[.55 .1 .25 .4]);
 
I = double(imread('sejarah 1.jpg'));
% Konvolusi dengan operator Roberts
robertshor = [0 1; -1 0];
robertsver = [1 0; 0 -1];
I1 = conv2(I,robertshor,'same');
I2 = conv2(I,robertsver,'same');
J = sqrt((I1.^2)+(I2.^2));
% Gambar Hasil
axes(ax9)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax10)
imagesc(I1),axis image,colormap gray,colorbar,title('Gradien arah horizontal');
axes(ax11)
imagesc(I2),axis image,colormap gray,colorbar,title('Gradien arah vertikal');
axes(ax12)
imagesc(J ),axis image,colormap gray,colorbar,title('Magnitudo gradien');
 
ax13 = axes('Parent',tab7,'Position',[.2 .53 .25 .4]);
ax14 = axes('Parent',tab7,'Position',[.55 .53 .25 .4]);
ax15 = axes('Parent',tab7,'Position',[.2 .1 .25 .4]);
ax16 = axes('Parent',tab7,'Position',[.55 .1 .25 .4]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator Prewitt
prewitthor = [-1 0 1; -1 0 1; -1 0 1];
prewittver = [-1 -1 -1; 0 0 0; 1 1 1];
I1 = conv2(I,prewitthor,'same');
I2 = conv2(I,prewittver,'same');
J = sqrt((I1.^2)+(I2.^2));
%Gambar Hasil
axes(ax13)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax14)
imagesc(I1),axis image,colormap gray,colorbar,title('Gradien arah horizontal');
axes(ax15)
imagesc(I2),axis image,colormap gray,colorbar,title('Gradien arah vertikal');
axes(ax16)
imagesc(J ),axis image,colormap gray,colorbar,title('Magnitudo gradien');
 
ax17 = axes('Parent',tab8,'Position',[.2 .53 .25 .4]);
ax18 = axes('Parent',tab8,'Position',[.55 .53 .25 .4]);
ax19 = axes('Parent',tab8,'Position',[.2 .1 .25 .4]);
ax20 = axes('Parent',tab8,'Position',[.55 .1 .25 .4]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator Sobel
sobelhor = [-1 0 1; -2 0 2; -1 0 1];
sobelver = [-1 -2 -1; 0 0 0; 1 2 1];
I1 = conv2(I,sobelhor,'same');
I2 = conv2(I,sobelver,'same');
J = sqrt((I1.^2)+(I2.^2));
%Gambar Hasil
axes(ax17)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax18)
imagesc(I1),axis image,colormap gray,colorbar,title('Gradien arah horizontal');
axes(ax19)
imagesc(I2),axis image,colormap gray,colorbar,title('Gradien arah vertikal');
axes(ax20)
imagesc(J ),axis image,colormap gray,colorbar,title('Magnitudo gradien');
 
ax21 = axes('Parent',tab9,'Position',[.2 .53 .25 .4]);
ax22 = axes('Parent',tab9,'Position',[.55 .53 .25 .4]);
ax23 = axes('Parent',tab9,'Position',[.2 .1 .25 .4]);
ax24 = axes('Parent',tab9,'Position',[.55 .1 .25 .4]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator isotropic
L1 = [-1 0 1; -sqrt(2) 0 sqrt(2); -1 0 1];
isover = [-1 -sqrt(2) -1; 0 0 0; 1 sqrt(2) 1];
I1 = conv2(I,L1,'same');
I2 = conv2(I,isover,'same');
J = sqrt((I1.^2)+(I2.^2));
%Gambar Hasil
axes(ax21)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax22)
imagesc(I1),axis image,colormap gray,colorbar,title('Gradien arah horizontal');
axes(ax23)
imagesc(I2),axis image,colormap gray,colorbar,title('Gradien arah vertikal');
axes(ax24)
imagesc(J ),axis image,colormap gray,colorbar,title('Magnitudo gradien');
 
ax25 = axes('Parent',tab10,'Position',[.08 .53 .25 .4]);
ax26 = axes('Parent',tab10,'Position',[.4 .53 .25 .4]);
ax27 = axes('Parent',tab10,'Position',[.72 .53 .25 .4]);
ax28 = axes('Parent',tab10,'Position',[.08 .1 .25 .4]);
ax29 = axes('Parent',tab10,'Position',[.4 .1 .25 .4]);
ax30 = axes('Parent',tab10,'Position',[.72 .1 .25 .4]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator compass
L1 = [1 1 1; 1 -2 1; -1 -1 -1];
K2 = [-1 -1 -1; 1 -2 1; 1 1 1];
K3 = [-1 1 1; -1 -2 1; -1 1 1];
K4 = [1 1 -1; 1 -2 -1; 1 1 -1];
I1 = conv2(I,L1,'same');
I2 = conv2(I,K2,'same');
I3 = conv2(I,K3,'same');
I4 = conv2(I,K4,'same');
J = sqrt((I1.^2)+(I2.^2)+(I3.^2)+(I4.^2));
%Gambar Hasil
axes(ax25)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax26)
imagesc(I1),axis image,colormap gray,colorbar,title('Gradien arah utara');
axes(ax27)
imagesc(I2),axis image,colormap gray,colorbar,title('Gradien arah selatan');
axes(ax28)
imagesc(I3),axis image,colormap gray,colorbar,title('Gradien arah timur');
axes(ax29)
imagesc(I4),axis image,colormap gray,colorbar,title('Gradien arah barat');
axes(ax30)
imagesc(J ),axis image,colormap gray,colorbar,title('Magnitudo gradien');
 
ax31 = axes('Parent',tab11,'Position',[.03 .58 .15 .25]);
ax32 = axes('Parent',tab11,'Position',[.23 .58 .15 .25]);
ax33 = axes('Parent',tab11,'Position',[.43 .58 .15 .25]);
ax34 = axes('Parent',tab11,'Position',[.63 .58 .15 .25]);
ax35 = axes('Parent',tab11,'Position',[.83 .58 .15 .25]);
ax36 = axes('Parent',tab11,'Position',[.03 .13 .15 .25]);
ax37 = axes('Parent',tab11,'Position',[.23 .13 .15 .25]);
ax38 = axes('Parent',tab11,'Position',[.43 .13 .15 .25]);
ax39 = axes('Parent',tab11,'Position',[.63 .13 .15 .25]);
ax40 = axes('Parent',tab11,'Position',[.83 .13 .15 .25]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator kirsch
L1 = [-3 -3 5; -3 0 5; -3 -3 5];
K2 = [-3 5 5; -3 0 5; -3 -3 -3];
K3 = [5 5 5; -3 0 -3; -3 -3 -3];
K4 = [5 5 -3; 5 0 -3; -3 -3 -3];
K5 = [5 -3 -3; 5 0 -3; 5 -3 -3];
K6 = [-3 -3 -3; 5 0 -3; 5 5 -3];
K7 = [-3 -3 -3; -3 0 -3; 5 5 5];
K8 = [-3 -3 -3; -3 0 5; -3 5 5];
I1 = conv2(I,L1,'same');
I2 = conv2(I,K2,'same');
I3 = conv2(I,K3,'same');
I4 = conv2(I,K4,'same');
I5 = conv2(I,K5,'same');
I6 = conv2(I,K6,'same');
I7 = conv2(I,K7,'same');
I8 = conv2(I,K8,'same');
J = sqrt((I1.^2)+(I2.^2)+(I3.^2)+(I4.^2)+(I5.^2)+(I6.^2)+(I7.^2)+(I8.^2));
%Gambar Hasil
axes(ax31)
imagesc(I ),axis off,colormap gray,title('Citra asli');
axes(ax32)
imagesc(I1),axis off,colormap gray,title('Timur');
axes(ax33)
imagesc(I2),axis off,colormap gray,title('Timur laut');
axes(ax34)
imagesc(I3),axis off,colormap gray,title('Utara');
axes(ax35)
imagesc(I4),axis off,colormap gray,title('Barat laut');
axes(ax36)
imagesc(I5),axis off,colormap gray,title('Barat');
axes(ax37)
imagesc(I6),axis off,colormap gray,title('Barat daya');
axes(ax38)
imagesc(I7),axis off,colormap gray,title('Selatan');
axes(ax39)
imagesc(I8),axis off,colormap gray,title('Tenggara');
axes(ax40)
imagesc(J ),axis off,colormap gray,title('Magnitudo gradien');
 
tgroup2 = uitabgroup('Parent', tab2);
tab11 = uitab('Parent', tgroup2, 'Title', 'Laplacian I');
tab12 = uitab('Parent', tgroup2, 'Title', 'Laplacian II');
tab13 = uitab('Parent', tgroup2, 'Title', 'Laplacian III');
tab14 = uitab('Parent', tgroup2, 'Title', 'Laplacian of Gaussian');
 
ax41 = axes('Parent',tab11,'Position',[.1 .23 .35 .6]);
ax42 = axes('Parent',tab11,'Position',[.55 .23 .35 .6]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator laplacian
L1 = [0 -1 0; -1 4 -1; 0 -1 0];
I1 = conv2(I,L1,'same');
%Gambar Hasil
axes(ax41)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax42)
imagesc(I1),axis image,colormap gray,colorbar,title('Hasil deteksi tepi');
 
ax43 = axes('Parent',tab12,'Position',[.1 .23 .35 .6]);
ax44 = axes('Parent',tab12,'Position',[.55 .23 .35 .6]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator laplacian
L2 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
I2 = conv2(I,L2,'same');
%Gambar Hasil
axes(ax43)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax44)
imagesc(I2),axis image,colormap gray,colorbar,title('Hasil deteksi tepi');
 
ax45 = axes('Parent',tab13,'Position',[.1 .23 .35 .6]);
ax46 = axes('Parent',tab13,'Position',[.55 .23 .35 .6]);
 
I = double(imread('sejarah 1.jpg'));
%Konvolusi dengan operator laplacian
L3 = [1 -2 1; -2 4 -2; 1 -2 1];
I3 = conv2(I,L3,'same');
%Gambar Hasil
axes(ax45)
imagesc(I ),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax46)
imagesc(I3),axis image,colormap gray,colorbar,title('Hasil deteksi tepi');
 
ax47 = axes('Parent',tab14,'Position',[.1 .23 .35 .6]);
ax48 = axes('Parent',tab14,'Position',[.55 .23 .35 .6]);
 
I = double(imread('sejarah 1.jpg'));
J = edge(I,'log');
axes(ax47)
imagesc(I),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax48)
imagesc(J),axis image,colormap gray,colorbar,title('Hasil deteksi tepi');
 
ax49 = axes('Parent',tab3,'Position',[.1 .23 .35 .6]);
ax50 = axes('Parent',tab3,'Position',[.55 .23 .35 .6]);
 
I = double(imread('sejarah 1.jpg'));
J = edge(I,'canny');
axes(ax49)
imagesc(I),axis image,colormap gray,colorbar,title('Citra asli');
axes(ax50)
imagesc(J),axis image,colormap gray,colorbar,title('Hasil deteksi tepi');