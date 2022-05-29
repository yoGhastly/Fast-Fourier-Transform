%Transformada de Fourier 1979187
clc
Fs=760;
T=1/Fs;
L=1210;
t=(0:L-1)*T;
s=2*sin(2*pi*5*t)+1*sin(2*pi*12.5*t)+1.5*sin(2*pi*20*t)+0.5*sin(2*pi*155*t);
subplot(2,1,1), plot(t,s), title('x(t)');
Y=fft(s);
J=Y/sqrt(L);
Pot_freq=sum(abs(J).^2)/L
P2=abs(Y/L);
P1=P2(1:L/2+1);
P1(2:end-1)=2*P1(2:end-1);
f=Fs*(0:(L/2))/L;
subplot(2,1,2),plot(f,P1),title('Transformada de Fourier')
FFF=fftshift(fft(s)/length(s));
SF=sum(FFF.*conj(FFF))
