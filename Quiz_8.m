% Quiz No. 8
%% 
clear;

Tb = 1/10; Eb = 2;
M = [4 16 64 256 1024];
c = 10;
f = -c:1/10:c;

for i = 1: length(M)
    Sb(:,i) = 2*Eb*(log2(M(i)))*sinc(Tb*f*log2(M(i))).^2;
end

%%
Sb = 2*Eb*(log2(2))*sinc(Tb*f*log2(2)).^2;
plot(f,Sb)
grid on
xlabel('Hz')
ylabel('A')
title('BPSK')

%%

subplot(5,1,1)
plot(f,Sb(:,1))
grid on
xlabel('Hz')
ylabel('A')
title('Q-PSK')
subplot(5,1,2)
plot(f,Sb(:,2))
grid on
xlabel('Hz')
ylabel('A')
title('16-QAM')
subplot(5,1,3)
plot(f,Sb(:,3))
grid on
xlabel('Hz')
ylabel('A')
title('64-QAM')
subplot(5,1,4)
plot(f,Sb(:,4))
grid on
xlabel('Hz')
ylabel('A')
title('256-QAM')
subplot(5,1,5)
plot(f,Sb(:,5))
grid on
xlabel('Hz')
ylabel('A')
title('1024-QAM')

