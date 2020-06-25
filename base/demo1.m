%% calc
(12+2*(7-4))/3^2 
%% Multiline input
S=1-1/2+1/3-1/4+ ...
1/5-1/6+1/7-1/8  
%% variable
eps
NaN
realmax
realmin
intmin
intmax

format short e
RMAd=realmax('double')		% 
RMAs=realmax('single')		% 
format long e
IMA64=intmax('int64')			% 
IMA32=intmax					% 
IMA32=intmax('int16')			%  
format short e
e1=eps							% 
e2=eps(2)	          %
pi


%% ops
a=[1:4]
b=a.'   % a.T
a*b
a.*b
a/b
a./b
a^b
a.^b
%% complex
z2 = 1 + 2 * i				%
z3=2*exp(i*pi/6)			%
z=z1*z2/z3  

%% 图示z1=4+3i,z2=1+2i 的和
z1=4+3*i;z2=1+2*i;	%
%
%
z12=z1+z2
%
clf,hold on			%
plot([0,z1,z12],'-b','LineWidth',3)
plot([0,z12],'-r','LineWidth',3)
plot([z1,z12],'ob','MarkerSize',8)
hold off,grid on,
axis equal
axis([0,6,0,6])
text(3.5,2.3,'z1')
text(5,4.5,'z2')
text(2.5,3.5,'z12')
xlabel('real')
ylabel('image') 

%% get sqrt(-8,3)
a=-8
r_a=a^(1/3)

p=[1,0,0,-a]

R=roots(p)

MR=abs(R(1));		%
t=0:pi/20:2*pi;	%
x=MR*sin(t);		
y=MR*cos(t);		
plot(x,y,'b:'),grid on		%
								%
hold on
plot(R(2),'.','MarkerSize',30,'Color','r')			%
plot(R([1,3]),'o','MarkerSize',15,'Color','b')	%
axis([-3,3,-3,3]),axis square						%
hold off 

%% matrix

AR=[1,3;2,4]
AI=[1,2
    3,4]

%% A=[1-5i,3-7i
%%    2-6i,4-8i]
%% 实部、虚部、模和幅角
    
AR=[1,3;2,4];AI=[5,7;6,8];
A=AR-AI*i						%

A_real=real(A)
A_image=imag(A)  

for m=1:2
for n=1:2
		Am1(m,n)=abs(A(m,n));
		Aa1(m,n)=angle(A(m,n))*180/pi;	%
	end
end
Am1,Aa1  


Am2=abs(A)
Aa2=angle(A)*180/pi 

%% 衰减振荡曲线  y=e^(1/3)*sin(3t)  t=[0:4pi]

t=0:pi/50:4*pi;			
y=exp(-t/3).*sin(3*t);	
plot(t,y,'-r','LineWidth',2)				
axis([0,4*pi,-1,1])
xlabel('t'),ylabel('y')

%% format rat 近似有理数表示
%% format hex  十六进制表示























