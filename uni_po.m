m = [1 0 0 1 0 1 0 1 1 1];    
n = length(m);

% unipolar
x = [];
y = [];
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 0 0];
    else
        y=[y 1 1];
    end
end

subplot(3,1,1);   
plot(x,y,'LineWidth',2), axis([0,n,-2,2]);
xlabel('Time');
ylabel('Amplitude');
title('Unipolar NRZ');
grid on;
for i = 1:n
    text(i-0.5, 1.2, num2str(m(i)),'FontWeight','bold');
end
%polar_level

x = [];
y = [];
for i=1:n
    x=[x i-1 i];
    if(m(i)==0)
        y=[y 1 1];
    else
        y=[y -1 -1];
    end
end

subplot(3,1,2);   
plot(x,y,'LineWidth',2), axis([0,n,-2,2]);
xlabel('Time');
ylabel('Amplitude');
title('Polar NRZ-L');
grid on;
for i = 1:n
    text(i-0.5, 1.2, num2str(m(i)),'FontWeight','bold');
end

% polar_inverse
x = [];
y = [];
a = 1;  
for i=1:n
    x=[x i-1 i];
    if(m(i)==1)
        a = -a;   
        y=[y a a];
    else
        y=[y a a];
    end
end

subplot(3,1,3);   
plot(x,y,'LineWidth',2), axis([0,n,-2,2]);
xlabel('Time');
ylabel('Amplitude');
title('Polar NRZ-I');
grid on;
for i = 1:n
    text(i-0.5, 1.5, num2str(m(i)),'FontWeight','bold','FontSize',12);
end
