plot(t,y1,'b',  'linewidth',2); hold on
plot(t,y2,'r--','linewidth',2); hold off
grid
 
set(gca,'FontName','Times New Roman','FontSize',20)
 
xlabel('{\it{t}} [s]','FontName','Times New Roman','FontSize',22)
ylabel('{\it{y}}_{1}({\it{t}}), {\it{y}}_{2}({\it{t}})','FontName','Times New Roman','FontSize',22)

legend('{\it{y}}_{1}({\it{t}})','{\it{y}}_{2}({\it{t}})')
set(legend,'FontName','Times New Roman','FontSize',20)


