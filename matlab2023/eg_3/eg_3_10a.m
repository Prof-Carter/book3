disp('++++++++++++++++++++++++++++++')
disp('例 3.10')
disp('++++++++++++++++++++++++++++++')

close all
clear
format compact

t = 0:0.01:4;

maru1 = - 2/9*exp(-10*t);
maru2 =  11/9*exp(-t);

maru4 =  20/9*exp(-10*t);
maru5 = -11/9*exp(-t);

figure(1)
set(gcf,'position',[50 50 1200 750])

subplot(2,3,1)
plot(t,maru1,'LineWidth',1.5)

subplot(2,3,2)
plot(t,maru2,'LineWidth',1.5)

subplot(2,3,3)
plot(t,maru1+maru2,t,maru2,'--','LineWidth',1.5)
legend('③ = ①+②','②')
set(legend,'FontName','MS UI Gotic','FontSize',14)

subplot(2,3,4)
plot(t,maru4,'LineWidth',1.5)

subplot(2,3,5)
plot(t,maru5,'LineWidth',1.5)

subplot(2,3,6)
plot(t,maru4+maru5,t,maru5,'--','LineWidth',1.5)
legend('⑥ = ③+④','⑤')
set(legend,'FontName','MS UI Gotic','FontSize',14)


for i=1:3
    subplot(2,3,i)

    xlim([0 4])
    ylim([-0.5 1.5])
    set(gca,'XTick',[0:4])
    set(gca,'YTick',[-0.5:0.5:1.5])
end

for i=4:6
    subplot(2,3,i)

    xlim([0 4])
    ylim([-1.5 2.5])
    set(gca,'XTick',[0:4])
    set(gca,'YTick',[-1:2])
end

for i=1:6
    subplot(2,3,i)

    set(gca,'FontName','Arial','FontSize',15)
    xlabel('t [s]','FontName','Arial','FontSize',16)

    grid
end

subplot(2,3,1)
ylabel('①','FontName','MS UI Gotic','FontSize',16)

subplot(2,3,2)
ylabel('②','FontName','MS UI Gotic','FontSize',16)

subplot(2,3,3)
ylabel('③, ②','FontName','MS UI Gotic','FontSize',16)

subplot(2,3,4)
ylabel('④','FontName','MS UI Gotic','FontSize',16)

subplot(2,3,5)
ylabel('⑤','FontName','MS UI Gotic','FontSize',16)

subplot(2,3,6)
ylabel('⑥, ⑤','FontName','MS UI Gotic','FontSize',16)

movegui('northwest')


