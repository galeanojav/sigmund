%{
Min1=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral570_ycentral1300_numpoints30_nexper_400.txt');
Min1(:,1)=int32(Min1(:,1));
Min1(:,2)=int32(Min1(:,2));
ycoord = Min1(1,2,1);
xsup = max(Min1(:,1));
xinf = min(Min1(:,1));
xmin =200;
xmax= 1400;
for j=xsup+1:xmax
    fila = [j,ycoord,1.0];
    Min1 = vertcat(Min1,fila);
end

for j=xmin:xinf-1
    fila = [j,ycoord,0.0];
    Min1 = vertcat(fila,Min1);
end

Min2=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral580_ycentral1232_numpoints33_nexper_400.txt');
Min2(:,1)=int32(Min2(:,1));
Min2(:,2)=int32(Min2(:,2));
ycoord = Min2(1,2,1);
xsup = max(Min2(:,1));
xinf = min(Min2(:,1));
for j=xsup+1:xmax
    fila = [j,ycoord,1.0];
    Min2 = vertcat(Min2,fila);
end

for j=xmin:xinf-1
    fila = [j,ycoord,0.0];
    Min2 = vertcat(fila,Min2);
end
%}


%horizontal

Minh=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral800_ycentral650_numpoints40_nexper_300_years_100_H.txt');
Minh(:,1)=int32(Minh(:,1));
Minh(:,2)=int32(Minh(:,2));
ycoord = Minh(1,2,1);
xsup = max(Minh(:,1));
xinf = min(Minh(:,1));
xmin =200;
xmax= 1400;

for j=xsup+1:ymax
    fila = [j,ycoord,1.0];
    Minh = vertcat(Minh,fila);
end

for j=xmin:xinf-1
    fila = [j,ycoord,0.0];
    Minh = vertcat(fila,Minh);
end
plot3(Minh(:,1),Minh(:,2),Minh(:,3));
hold on;
grid on;

%vertical
Minv=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral1100_ycentral482_numpoints40_nexper_300_years_100_V.txt');
Minv(:,1)=int32(Minv(:,1));
Minv(:,2)=int32(Minv(:,2));
xcoord = Minv(1,1,1);
ysup = max(Minv(:,2));
yinf = min(Minv(:,2));
ymax=1300;
ymin = 0;
for j=ysup+1:ymax
    fila = [xcoord,j,1.0];
    Minv = vertcat(Minv,fila);
end

for j=ymin:yinf-1
    fila = [xcoord,j,0.0];
    Minv = vertcat(fila,Minv);
end



%[C,h]=contour(rangeX,rangeY,Mdata(1:10,:,:),rangeZ);

%{
plot3(Min1(:,1),Min1(:,2),Min1(:,3),'-');
grid on;
zlim([0 1.1]);
hold on;

plot3(Min2(:,1),Min2(:,2),Min2(:,3));
hold on;
%}

plot3(Minv(:,1),Minv(:,2),Minv(:,3));
hold on;
grid on;
%{
xlim([xmin 1400]);
ylim([300 1300]);
zlim([0 1.1]);
%}
hold on;
%[c,h] = contourm(Mdata,'LevelStep',0.1,'ShowText','on');


%{
colormap(cool);
c = linspace(1,10,length(Mdata(:,1)));
s=6;

h = scatter3(Ma(:,1),Ma(:,2),Ma(:,3),c);
xlim([min(Ma(:,1))-50 1400])
ylim([0 1300])
zlim([0 1])
set(h, 'Markersize',12);

Ma=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral580_ycentral1232_numpoints30_nexper_400.txt');
h = scatter3(Ma(:,1),Ma(:,2),Ma(:,3),c);

Ma=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral600_ycentral1165_numpoints30_nexper_400.txt');
h = scatter3(Ma(:,1),Ma(:,2),Ma(:,3),c);

%}
%{
Ma=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral614_ycentral1232_numpoints3_nexper_1000.txt');
h = scatter(Ma(:,1),Ma(:,2),s,c,'.');

Ma=dlmread('probslice_nexper_1x1_Binary_Logistic_abs_xcentral634_ycentral1165_numpoints3_nexper_400.txt');
h = scatter(Ma(:,1),Ma(:,2),s,c,'.');


M1=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM1.txt');
M2=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM2.txt');
M3=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM3.txt');
M4=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM4.txt');
M5=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM5.txt');
M6=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM6.txt');
M7=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM7.txt');
M8=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM8.txt');
M9=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM9.txt');
M10=dlmread('bd_nexper_1x1_Logistic_abs_Pl_r_b_-0.050000_0.000080_Pol_r_b_-0.090000_0.000110_NUM10.txt');

mediax = round(1/10*(M1(:,1)+M2(:,1)+M3(:,1)+M4(:,1)+M5(:,1)+M6(:,1)+M7(:,1)+M8(:,1)+M9(:,1)+M10(:,1)));
mediay = round(1/10*(M1(:,2)+M2(:,2)+M3(:,2)+M4(:,2)+M5(:,2)+M6(:,2)+M7(:,2)+M8(:,2)+M9(:,2)+M10(:,2)));

hold on;
%}
%{
prob = 0.95;
c = zeros(21);
for j=1:21
   c(j) = prob;
end
Mb=dlmread('bd_nexper_1x1_Logistic_abs_Binary_1.0_0.1.txt');
hold on;
%h = plot3(Mb(:,1),Mb(:,2),c,'.r');
h = plot3(mediax,mediay,c,'.r');
%}
