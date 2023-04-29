disp('++++++++++++++++++++++++++++++')
disp('ó· 3.9')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

% *****************************************************
syms a b s t

A = [     0       1
     -(a^2+b^2)  2*a ];
B = [ 1
      0 ];
C = [ 1  0 ];

x0 = [ 1
       0 ];

disp(' ')
disp('--- ëJà⁄çsóÒ ------')
exp_At = ilaplace(inv(s*eye(2) - A));
exp_At = simplify(exp_At)

disp(' ')
disp('--- óÎì¸óÕâûìö ------')
yt = C*exp_At*x0

disp(' ')
disp('--- óÎì¸óÕâûìöÇÃéûä‘î˜ï™ ------')
dyt = diff(yt,t);
dyt = simplify(dyt)

disp(' ')
disp('--- â∫å¿ã»ê¸ ------')
yt_upper = sqrt(a^2 + b^2)/b*exp(a*t)

disp(' ')
disp('--- è„å¿ã»ê¸ ------')
yt_lower = - yt_upper

% *****************************************************
t = linspace(0,3*pi/2,100);

% ============
figure(1)
y       = subs(subs(yt,      {a,b},{-1,3}),t);
y_upper = subs(subs(yt_upper,{a,b},{-1,3}),t);
y_lower = subs(subs(yt_lower,{a,b},{-1,3}),t);

plot(t,y,'r','LineWidth',1.5)
hold on

figure(2)
set(gcf,'position',[50 50 1200 750])

subplot(2,2,4)
plot(t,y,'r','LineWidth',1.5)
hold on
plot(t,y_upper,'k',t,y_lower,'k')

for i = 1:4
    tmin(i) = subs((2*i-1)*pi/b,b,3);
    ymin(i) = subs(subs(yt, {a,b},{-1,3}),tmin(i));

    tmax(i) = subs(2*i*pi/b,b,3);
    ymax(i) = subs(subs(yt, {a,b},{-1,3}),tmax(i));
end
plot(tmin,ymin,'.','markersize',20,'color',[0.5 0.5 0])
plot([0 tmax],[1 ymax],'.','markersize',20,'color',[0   0.5 0.5])
hold off

% ============
figure(1)
y       = subs(subs(yt,      {a,b},{-1,6}),t);
y_upper = subs(subs(yt_upper,{a,b},{-1,6}),t);
y_lower = subs(subs(yt_lower,{a,b},{-1,6}),t);

plot(t,y,'g','LineWidth',1.5)
hold on

figure(2)
subplot(2,2,2)
plot(t,y,'g','LineWidth',1.5)
hold on
plot(t,y_upper,'k',t,y_lower,'k')

for i = 1:4
    tmin(i) = subs((2*i-1)*pi/b,b,6);
    ymin(i) = subs(subs(yt, {a,b},{-1,6}),tmin(i));

    tmax(i) = subs(2*i*pi/b,b,6);
    ymax(i) = subs(subs(yt, {a,b},{-1,6}),tmax(i));
end
plot(tmin,ymin,'.','markersize',20,'color',[0.5 0.5 0])
plot([0 tmax],[1 ymax],'.','markersize',20,'color',[0   0.5 0.5])
hold off

% ============
figure(1)
y       = subs(subs(yt,      {a,b},{-2,3}),t);
y_upper = subs(subs(yt_upper,{a,b},{-2,3}),t);
y_lower = subs(subs(yt_lower,{a,b},{-2,3}),t);

plot(t,y,'b','LineWidth',1.5)
hold on

figure(2)
subplot(2,2,3)
plot(t,y,'b','LineWidth',1.5)
hold on
plot(t,y_upper,'k',t,y_lower,'k')

for i = 1:4
    tmin(i) = subs((2*i-1)*pi/b,b,3);
    ymin(i) = subs(subs(yt, {a,b},{-2,3}),tmin(i));

    tmax(i) = subs(2*i*pi/b,b,3);
    ymax(i) = subs(subs(yt, {a,b},{-2,3}),tmax(i));
end
plot(tmin,ymin,'.','markersize',20,'color',[0.5 0.5 0])
plot([0 tmax],[1 ymax],'.','markersize',20,'color',[0   0.5 0.5])
hold off

% ============
figure(1)
y       = subs(subs(yt,      {a,b},{-2,6}),t);
y_upper = subs(subs(yt_upper,{a,b},{-2,6}),t);
y_lower = subs(subs(yt_lower,{a,b},{-2,6}),t);

plot(t,y,'m','LineWidth',1.5)
hold off

figure(2)
subplot(2,2,1)
plot(t,y,'m','LineWidth',1.5)
hold on
plot(t,y_upper,'k',t,y_lower,'k')

for i = 1:4
    tmin(i) = subs((2*i-1)*pi/b,b,6);
    ymin(i) = subs(subs(yt, {a,b},{-2,6}),tmin(i));

    tmax(i) = subs(2*i*pi/b,b,6);
    ymax(i) = subs(subs(yt, {a,b},{-2,6}),tmax(i));
end
plot(tmin,ymin,'.','markersize',20,'color',[0.5 0.5 0])
plot([0 tmax],[1 ymax],'.','markersize',20,'color',[0   0.5 0.5])

hold off

% ============
figure(1)
grid
xlim([0 3*pi/2])
ylim([-1.1 1.1])
set(gca,'XTick',[0:pi/6:3*pi/2])
set(gca,'xticklabel',{'0',' ','\pi/3',' ','2\pi/3',' ','\pi',' ','4\pi/3',' '})
set(gca,'YTick',[-1:0.5:1])
set(gca,'FontName','Arial','FontSize',20)

xlabel('t [s]','FontName','Arial','FontSize',22)
ylabel('y(t) [m]','FontName','Arial','FontSize',22)

legend('-1{\pm}3j','-1{\pm}6j','-2{\pm}3j','-2{\pm}6j')
set(legend,'FontName','Arial','FontSize',16)

xtickangle(0)

% ============
figure(2)
set(gcf,'position',[50 50 900 600])

for i = 1:4
    subplot(2,2,i)
    grid
    xlim([0 3*pi/2])
    ylim([-1.1 1.1])
    set(gca,'XTick',[0:pi/6:3*pi/2])
    set(gca,'XTickLabel',{'0',' ','\pi/3',' ','2\pi/3',' ','\pi',' ','4\pi/3',' '})
    set(gca,'YTick',[-1:0.5:1])
    set(gca,'FontName','Arial','FontSize',15)

    xlabel('t [s]','FontName','Arial','FontSize',16)
    ylabel('y(t) [m]','FontName','Arial','FontSize',16)

    xtickangle(0)
end

subplot(2,2,4); title('eigen value: -1{\pm}3j','FontName','Arial','FontSize',15)
subplot(2,2,2); title('eigen value: -1{\pm}6j','FontName','Arial','FontSize',15)
subplot(2,2,3); title('eigen value: -2{\pm}3j','FontName','Arial','FontSize',15)
subplot(2,2,1); title('eigen value: -2{\pm}6j','FontName','Arial','FontSize',15)

% ============
figure(1); movegui('northwest')
figure(2); movegui('northeast')

