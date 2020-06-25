%% (1,0)
a1=1:6					
a2=0:pi/4:pi			
a3=1:-0.1:0	

b1=linspace(0,pi,4)		
b2=logspace(0,3,4)	

rng default
c2=rand(1,5)	

%% (2,0)

a=2.7358; b=33/79;					
C=[1,2*a+i*b,b*sqrt(a);sin(pi/4),a+5*b,3.5+i]  

%% use variable editor 
A=[]    %% edit add


%% default array

ao=ones(2,4)				
az=zeros(2,5)				
ae=eye(3)					
am=magic(4)				
ad=diag(am)				
add=diag(diag(am))	


rng default		
Au=rand(1,5)				
Ai=randi([-3,4],2,8)	
As=randsrc(3,12,[-3,-1,1,3],1)
				
Ap=randperm(8)	

rng(0,'v5normal')	 	
randn(2,6)	


n=5;lambda=2;
A = gallery('jordbloc',n,lambda)	

rng(11,'v5normal')						
n=6;										
kappa=1e8;								
mode=2;									
B= gallery('randsvd',n,kappa,mode)	
Bsv=svd(B)'								
Bc=cond(B)								  

%% clear
clear

%% Dimension  Size

A=reshape(1:24,2,3,4);	
dim_A=ndims(A)			
size_A=size(A)			
L_A=length(A)		

%% slices
A=zeros(2,6)		
A(:)=1:12			
a8=A(8)			
a311=A([3,11])	 


A(3,7)=37			
a13=A(:,[1,3])	
aend=A([2,3],4:end)	

L=A<3			
A(L)=NaN	

%% array ops
a=1:5;b=6:10;c=11:15;	
a_b=[a,b]					
							
ab=[a;b;c]	

AB1=repmat(ab,[1,2])	
AB2=repmat(ab,[2,1])	


%% reshape
a=1:24;					
A=reshape(a,3,8)			
B=reshape(A,2,4,3)	

Aud=flipud(A)		
Alr=fliplr(A)		
B1=flipdim(A,1)	
B2=flipdim(A,2)	
At=A'

A90=rot90(A)		
A180=rot90(A,2)	 

A
CR=circshift(A,1)			
CL=circshift(A,[0,-1])	


%%  据电阻两端施加的电压，测量电阻中流过的电流，然后据测得的电压、电流计算平均电阻值。

vr=[0.89, 1.20, 3.09, 4.27, 3.62, 7.71, 8.99, 7.92, 9.70, 10.41];
ir=[0.028, 0.040, 0.100, 0.145, 0.118, 0.258, 0.299, 0.257, 0.308, 0.345];						
L=length(vr);					
for k=1:L
	r(k)=vr(k)/ir(k);		
end																		
sr=0;																	
for k=1:L
	sr=sr+r(k);				
	end
rm=sr/L			


vr=[0.89, 1.20, 3.09, 4.27, 3.62, 7.71, 8.99, 7.92, 9.70, 10.41];
ir=[0.028, 0.040, 0.100, 0.145, 0.118, 0.258, 0.299, 0.257, 0.308, 0.345];						
r=vr./ir		
rm=mean(r)	

%% 在所有水平线和垂直线交点上计算函数z=sin|xy|

x=-5:0.1:5;					
y=(-2.5:0.1:2.5)';			
N=length(x);					
M=length(y);					
for ii=1:M
    for jj=1:N
        X0(ii,jj)=x(jj);	
        Y0(ii,jj)=y(ii);	
        Z0(ii,jj)=sin(abs(x(jj)*y(ii)));
    end
end  


[X,Y]=meshgrid(x,y);		
Z=sin(abs(X.*Y));	

norm(Z-Z0)

surf(X,Y,Z)
xlabel('x')
ylabel('y')
shading interp
view([190,70])     


%% 数组元素的“和”、“积”、“累和”、“累积”运算。

% rng default		
a=[(1:5)',randi(5,[5,3]),randn(5,2)]				
cs=cumsum(a)		
s=sum(a)			
cp=cumprod(a)  	
p=prod(a)		


% rng(50,'v5normal')				
a=randn(1,3),b=randn(1,3),		
c=dot(a,b)						
d=cross(a,b)		

ab=[a;b];
dd(1)=det(ab(:,[2,3]));
dd(2)=-det(ab(:,[1,3]));
dd(3)=det(ab(:,[1,2])); 
dd		


plot3([0;a(1)],[0;a(2)],[0;a(3)],'b--','LineWidth',3)	
hold on
plot3([0;b(1)],[0;b(1)],[0;b(3)],'g-.','LineWidth',3)	
plot3([0;d(1)],[0;d(2)],[0;d(3)],'r','LineWidth',3)		
hold off
grid on
box on
view([131,-4])
legend('\bfa','\bfb','\bfd = {\bfa} {\times} {\bfb}') 


%% 高维数组的孤维删除

A=reshape(1:24,[1,3,4,1,2]);	
SA=size(A)						
B=squeeze(A)		

[Am,m]=shiftdim(A)		


A3=shiftdim(Am,3)		

Am(:,:,:,1)=[]			  


%% 高维数组的维度重排

A=reshape(1:24,[2,4,3])		  

DimOrder=[3,2,1];
B=permute(A,DimOrder) 	
AA=ipermute(B,DimOrder)


C=reshape(A,[3,4,2])

%% “非数”和“空”数组

a=0/0,b=0*log(0),c=inf-inf  
0*a,sin(a) 
class(a)		
isnan(a)	


rng default	
R=rand(2,5);R(2,3)=NaN;R(1,5)=NaN  
LR=isnan(R)	

si=find(LR);						
[ri,ci]=ind2sub(size(R),si);	
disp('非数位置的单下标标识')
disp(['第',int2str(si(1)),'和第',int2str(si(2)),'个元素'])
disp(' ')
disp('非数位置的双下标标识')
disp(['第 ',mat2str([ri(1),ci(1)],2),' 元素'])
disp(['第 ',mat2str([ri(2),ci(2)],2),' 元素'])  



[rj,cj]=find(LR);		
disp('非数位置的双下标标识')
disp(['第 ',mat2str([rj(1),cj(1)],2),' 元素'])
disp(['第 ',mat2str([rj(2),cj(2)],2),' 元素'])  

%% empty array 
a=[]
b=ones(2,0),c=zeros(2,0),d=eye(2,0)
f=rand(2,3,0,4)  

class(a)			
isnumeric(a)		
isempty(a)	

which a 			
ndims(a)			
size(a)	

A=reshape(-4:5,2,5) 

A(:,[2,4])=[]			  

%% 关系运算

t=-3*pi:pi/10:3*pi;	
y=sin(t)./t;			
tt=t+(t==0)*eps;		
yy=sin(tt)./tt;		
subplot(1,2,1),plot(t,y),axis([-9,9,-0.5,1.2]),
xlabel('t'),ylabel('y'),title('残缺图形')
subplot(1,2,2),plot(tt,yy),axis([-9,9,-0.5,1.2])
xlabel('tt'),ylabel('yy'),title('正确图形')  


%%  逻辑操作

A=[-2,-1,0,0,1,2,3]
L1=~(A>1)				
L2=(A>0)&(A<2)	

A,B=[0,-1,1,0,1,-2,-3]
C=xor(A,B)	 

%% sint 削顶半波整流波形 

clear,t=linspace(0,3*pi,500);y=sin(t);
z1=((t<pi)|(t>2*pi)).*y;					%	<3>
w=(t>pi/3&t<2*pi/3)+(t>7*pi/3&t<8*pi/3);%	<4>
wn=~w;																	%	<5>
z2=w*sin(pi/3)+wn.*z1;						%	<6>
subplot(4,1,1),plot(t,y,':r'),axis([0,10,-1.5,1.5])
ylabel('y'),grid on
subplot(4,1,2),plot(t,z1,':r'),axis([0,10,-0.2,1.5]),ylabel('z1')
subplot(4,1,3),plot(t,wn,':r'),axis([0,10,-0.2,1.5]),ylabel('wn')
subplot(4,1,4),plot(t,z2,'-b'),axis([0,10,-0.2,1.5]),ylabel('z2')
xlabel('t')  









