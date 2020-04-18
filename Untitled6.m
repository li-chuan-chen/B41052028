echo on
t0=.15;
ts=0.001;
fc=250;
snr=20;
a=0.85
fs=1/ts;
t=[0:ts:t0];
df=02;
snr_lin=10^(snr/10);

m=[ones(1,t0/(3*ts)),-2*ones(1,t0/(3*ts)),zeros(1,t0/(3*ts)+1)];
c=cos(2*pi*fc.*t);
m_n=m/max(abs(m));
[M,m,df1]=fftseq(m,ts,df);
M=M/fs;
f=[0:df1]*(length(m)-1)]-fs/2;
U=U/fs;
u=(1+a*m_n)*c;
