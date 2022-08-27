L=pi;
fu=@(t) t;

a0=1/L*integral(fu,-L,L);

for n=1:na
    fa=@(t) t.*cos(n*pi*t/L);
    fb=@(t) t.*sin(n*pi*t/L);
    an=1/L*integral(fa,-L,L);
    bn=1/L*integral(fb,-L,L);
    t=-L:0.001:L;
    s1=length(t);
    ft(1:s1,n)=an.*cos(n*pi*t./L) + bn.*sin(n*pi*t./L);
end

ftt=a0/2+sum(ft,2);

plot(t,t)
hold on
plot(t,ftt)
hold off

xlabel('t(s)')
ylabel('Armónicos')
title('Gráfica Serie de Fourier de la función f(t)=t')