a='This is an example.'  

size(a)  

a14=a(1:4)				
ra=a(end:-1:1)		

Ua=double(a)		


char(Ua)	

w=find(a>='a'&a<='z');	
Ua(w)=Ua(w)-32;			
char(Ua)	


A='这是一个算例。';		 
A_s=size(A)				 
A56=A([5 6])				 
UCA=double(A)			


clear
S=['This string array '		
   'has multiple rows.']
size(S) 


S1=char('This string array','has two rows.')
size(S1)  


S2=str2mat('这','字符','串数组','','由4行组成')
size(S2)  




C1={'MATLAB201xa includes data types:';
'◆Double array';
'◆Character array';
'and so on'}					
C1_c=class(C1)					
size(C1)			




C2=char('MATLAB201xa includes data types:',...
'◆Double array',...
'◆Character array',...
'and so on')				
C2_c=class(C2)
size(C2)	


C3=cellstr(C2)						
size(C3)  



A=eye(2,4);			
A_str1=int2str(A)	  



a=rand(2,2);	
	
s1=num2str(a)						
s_s=sprintf('%.10e\n',a)			 


fprintf('%.5g\\',a)				  

s_str2=str2num(s_s)
s_sscan=sscanf(s_s,'%f',[3,2]) 

a='1e-3';
da=double(a)					
sda=str2double(a)			
sna=str2num(a)		

b='1,2;3,4';
db=double(b)					
sdb=str2double(b)			
snb=str2num(b)				


c='ab+cde';
dc=double(c)					
sdc=str2double(c)			
snc=str2num(c)	


clear				
a=2;				
w=3;				
t=0:0.01:10;		
y=exp(-a*t).*sin(w*t);				
[y_max,i_max]=max(y);				
t_text=['t=',num2str(t(i_max))];	
y_text=['y=',num2str(y_max)];		
max_text=char('maximum',t_text,y_text);
%
tit=['y=exp(-',num2str(a),'t)*sin(',num2str(w),'t)'];	
plot(t,zeros(size(t)),'k')						
hold on											
plot(t,y,'b')										
plot(t(i_max),y_max,'r.','MarkerSize',20)	
text(t(i_max)+0.3,y_max+0.05,max_text)	
title(tit),xlabel('t'),ylabel('y'),hold off 



%% sym in symbolic ,but the python package has some error




A=rand(2,3)     			
C1=num2cell(A)     		
SC1=size(C1)		


C2=num2cell(A,2)  		
disp(['C2{1,:}=',mat2str(C2{1,:},4)])	
SC2=size(C2)		

C3=num2cell(A,1)   		
SC3=size(C3)	


x=zeros(4,5);x(:)=1:20      
C4=mat2cell(x, [2 2], [3 2])
celldisp(C4)  


D1=cell2mat(C4(1,:))		
D2=[C4{1,1},C4{1,2}]	


x(1)={1:10};x(2)={rand(100,1)};	
xm=cellfun(@mean,x)					
class(xm)		







clear
A(1,1).name='Wang Pin-pin'; A(1,1).phonenumber=85436789;
A(1,2).name={'Lin Beng-ming'};A(1,2).phonenumber=61125568;
A(2,1).name='Zhang Qing';A(2,1).phonenumber=83492567;
A(2,2).name(2)={'Yu Dong-jin'};A(2,2).phonenumber(2)=61125569;  
A(1,3).name={'Zhao Zhong-xin'};A(1,3).phonenumber=54681123;
A(1,3).name(2)={'Mao Li-xiu'};A(1,3).phonenumber(2)=54681124;


disp('域名'),disp(fieldnames(A))  

disp('大小'),disp(size(A))  


B1=getfield(A,{1,3},'name',{1:2});
disp(class(B1)),disp(B1)  

[Bc1,Bc2]=deal(A(1,3).name(1:2))
disp(class(Bc1))  

[Bn1,Bn2]=deal(A(1,3).name{1:2})
disp(class(Bn1))  

[Bm1,Bm2]=A(1,3).name{1:2}
disp(class(Bm1))  



ex(1,1).s.sub='SUB 1';	
ex(3,1).s.sub='SUB 3';		
ex(3,1).s.num=1/3;			
ex								
fprintf('%s',['ex(1,1).s的子域',blanks(4)]),disp(ex(1,1).s)
fprintf('%s\n',['ex(3,1).s的子域',blanks(4)]),
disp(ex(3,1).s)







clear;
T.M1(1,:)=3*rand(1,31)+3;T.M2(1,:)=rand(1,28)-0.5;
T.M3(1,:)=4*rand(1,31)+4;	
T.M1(2,:)=3*rand(1,31)+6;T.M2(2,:)=3*rand(1,28)-0.5;
T.M3(2,:)=9*rand(1,31)+5;	
S.M1='January';S.M2='February';S.M3='March';	
T,S  

At=structfun(@(x)mean(mean(x)),T)
class(At)		


As=structfun(@(x)x(1:3),S,'UniformOutput',0);
class(As)			

disp(['每月平均温度',blanks(3),As.M1,blanks(3),As.M2,blanks(3),As.M3])
disp([blanks(12),mat2str(At',3)])  


T(2).M2=5*rand(3,28)+60		
B28=arrayfun(@(x)mean(x.M2),T,'UniformOutput',false)
class(B28)
B2=arrayfun(@(x)mean(mean(x.M2)),T,'UniformOutput',false)




