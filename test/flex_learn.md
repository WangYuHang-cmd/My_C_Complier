## [Flexѧϰ�ĵ�](https://blog.csdn.net/weixin_44007632/article/details/108666375)

flex �Ĵ����Ϊ�������֣���%%�ָ��Щ���ֿ���Ϊ�գ���Ϊ����flex�����ܹ��������Ǵ�ǰ���ܵķ����ɹ����룬��Ҫ���벿�������γ��·������ֿ�ܣ�

```c
%{

%}

%%

%%
int main(int argc, char **argv)
{
  yylex()
  return 0;
}
int yywrap()
{
	return 1;
}
```

�ٵ�һ���֣���ԭ��ܼ�����%{ %}����Դ�������û���κ����ݣ�����Ŀǰ�𲻵��κ����á�������Դ����ŵ�Ŀ���ǣ���������ֿ���ʹ��C���Դ������Ԥ��������ʹ��#include<stdio.h>�����Ƕ���ꡢ�����ȵȡ�

�ڵڶ����֣�û�б仯�������Ҫд��Ĵ������ص����ݣ����ں���չ����

�۵������֣�������־�������дC���Դ���ģ���˲���Ҫʹ��%{%}���Ŷԡ��������������������������Ӵ��������������ƺ���������������������������չ��������Щ���ݡ�yylex()��������ʵ���ɵڶ���������д���ƥ������Զ����ɣ�Ҳ����˵��**yylex()��ʵ������lex�����Ĵʷ���������**�������ǵ�����ʱ���Ż���ʽ��ʼ�ʷ�������������������ľ������ݣ����棩

��������yywarp����������һ��Լ����������������1ʱ������ɨ���������ʱ����������������ڶ�ȡ����ļ�ʱ�����ô����������Ľ�������Ҳ����δ������������չ����

�������������ǽ�����flex����Ļ����ṹ����������һ�����ֿ�ܡ������������� **ֻҪ�ڵڶ������м�������** �����������������޸ģ�����������һ���в����ܵĴ��ʷ��������ܵĳ����ˡ�

�������������ǽ�����flex����Ļ����ṹ����������һ�����ֿ�ܡ������������� **ֻҪ�ڵڶ������м�������** �����������������޸ģ�����������һ���в����ܵĴ��ʷ��������ܵĳ����ˡ�

###### �ڶ����ֵı�д

�ڶ������ɶ�������rule����ɣ�ÿ��rule������**pattern**��**action**��ɡ�

> patternʹ��������ʽ��ʾ������Ϊ��Ҫƥ��ĴʵĹ���
>
> actionʹ�ô����ʾ������Ϊ�ɹ�ƥ��ôʺ�ִ�еĶ�����

������flex�е�pattern�ο���

![1672506757528](image/flex_learn/1672506757528.png)

ʾ�����룺

```cpp
%{
int num=0;
int chars=0;
%}
%%
[a-zA-Z]+  { chars++; }
[1-9]+[0-9]* {num++;}
\n     
.      
%%
main(int argc, char **argv)
{
  yylex();
  printf("%8d%8d\n", num,chars);
}
int yywrap()
{
	return 1;
}

```

> Q1�����ڹ���ۢܣ���Ȼ�����κβ�������ôΪʲôҪƥ���أ�
> A1����ʵ�ϣ�**flex���κ�û��ƥ�䵽���ַ������Զ���ԭ���������**����ˣ�������Щ����Ҫ���������������Ҫ������Ե�pattern��Ӧ�ý���ƥ�䲢���޲�������

> Q2����Ȼ���.����ƥ�������ַ�����ȻҲ��ƥ�䵽����٢ڵ�pattern����ô���ǻ���Ч��
> A2��flexӵ��һ�׼򵥵���������Ĺ���ʹ�ʷ����������������������ǣ�1��flexģʽֻƥ�������ַ����ַ���һ�Σ�2��flexִ�е�ǰ����������ƥ��Ķ������ڶ�������ͽ��������ɻ���Ȼ����ƥ�䵽����һ���ַ�ʱ��������ܵ�pattern����flex�ᾡ���������pattern����ƥ�䣬��˻����������ֱ����һ���ַ�������޷�ƥ������һ��pattern����ʱ�Ž���ƥ�䡣���Ե��������ֻ���ĸ�������ʣ���ƥ�����ʱ������Ȼ��ƥ�������ߡ�

> Q3����Ȼ��ô˵����������һ�����⡪�������ֻ����һ������1����ô���������ж�Ϊ�ٵ�pattern���Ǣܵ�pattern�أ�
> A3��flex�Ĺ��������������ȼ�����ƥ�䳤����ͬʱ����������Ĺ�����Ϊƥ���������ڹ�����ڢܵ����棬������Ȼ�Ὣ��ƥ������֡�

�ܽ�һ�£�flexƥ��ԭ����1.�ƥ�� 2.ƥ�����ȼ�����д����˳�� 3.ֻƥ��һ�� 4.δƥ���ԭ�����


**�����ؼ������ʶ��**

```cpp
���룺
double test(int a, double b)
{
  double c=(double) a;
  double d=b+c;
  if (d>0)
  return d;
  else
  return 0;
}

�����
ÿ�е����붼���γ���Ӧ������������бȶ�����Ƿ���ȷ��
����ڵ�һ�У���������������µ��ַ�����
KEY MARK KEY MARK KEY MARK

ȫ������󣬰�����Ctrl+C���������룬�����������µ������
MARK=10  KEY=10
������ȷ����

```

���

```cpp
%{
   int key=0;
   int mark=0;
%}

ALPHA [a-zA-Z]
MARK  {ALPHA}+[a-zA-Z0-9_]*
KEY   if|else|int|double|return

%%
{KEY}					printf("KEY ");key++;
{MARK}					printf("MARK "); mark++;
\n						printf("\n");
.

%%
int main(int argc, char **argv)
{
  yylex();
  printf("MARK=%d  KEY=%d",mark,key);
  yywrap();
}
int yywrap()
{
	return 1;
}

```

`����ı�д��ʽΪ��name definition`��definition��ʵ���ǵڶ�����Ҫƥ���pattern��



**��������**

> ����������ı���������ʽ�ĺϷ��ַ�������Ϊ���ǻ�û�м�������Ƿ�Ϸ�����������
> int a=5;
> double b=2.2;
> [����] [������] [=] [��ʵ��]
> �����Ƕ���ÿ�����������룬�����������
> <[������],[����],[ֵ]>

```cpp
int a=5;			//input
<a,int,5>			//output
double b_def=2.33;	//input
<b_def,double,2.33>	//output ��Ϊ2.330000��ֻҪֵ�Ծ���

```

![1672579561357](image/flex_learn/1672579561357.png)



�Ӳ͡�
������������lex/flex����˵����΢�����ˣ��������������ʲô���ر�����Ҫ������ѧϰ������������Ի��Ǳ������������ﻹ���Ը���ӵ�ͣ����Ӷ�flex����⡣���⣬flex����ֻ��д�ʷ��������Ĺ��ߣ�����ʵ��Ҳ��һ������Ĺ��ߣ�����flexҲ��д������ĳ���
��ʹ��yyout��yyin
����������Ҫ����ϰ���ĳ�������һ����չ��ϣ��������ʱ����ָ�������ļ�������ļ�����������ʾ��

a.exe  2.txt  3.txt
//��2.txt�����ݣ���3.txtд����

```cpp
a.exe  2.txt  3.txt
//��2.txt�����ݣ���3.txtд����
```

Ҫ��ζԴ������ı��أ���ʵ�ϣ���main������һ��ı伴�ɣ�

```cpp
int main(int argc, char **argv)
{
  if (argc>1)
  {
    FILE *file;
	file=fopen(argv[1],"r");
	if(file)
	  yyin=file;
  }
  if (argc>2)
  {
	FILE *file;
	file=fopen(argv[2],"w");
	if(file)
	{
	  yyout=file;
	  //freopen(argv[2],"w",stdout);
	 }
  }
  
  yylex();
  yywrap();
}
```



## bison/yacc����

```c
/*test.l*/
%{
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *);
%}
NUM [1-9]+[0-9]*|0
%%

{NUM}		                return NUM;
"+"							return ADD;
"-"							return SUB;
"*"							return MUL;
"/"							return DIV;
[a-zA-Z_$]+[a-zA-Z_$0-9]*	return VAR;
\n                          return CR;
[ \t]+                     /* ignore whitespace */;
.
%%

```

��y.tab.h��bison�ڷ������ʱ�Զ����ɵ�ͷ�ļ�����Ҳ��Ϊʲô�����ȷ���.y�ļ�����������������ͷ�ļ������������
��yyerror��bison������Ҫ�õ��ı���������Ȼ��bison�ı���������ôΪʲô����bison�ж����أ���ʵ�����������������ж����������������������Ϊ���򲻽����﷨�����׶λᱨ���ʷ������׶�Ҳ�ǻᱨ��ġ���ʵbison���Զ����������������������Ҫʹ���Լ���д�ı������Ļ�����Ҫ����������������ᱨ���档������ϣ�������������棩


```c
/*test.y*/
%{
#include <stdio.h>
#include <string.h>
int yylex(void);
void yyerror(char *);
%}

%token NUM ADD SUB MUL DIV VAR CR

%%
       line_list: line
                | line_list line
                ;
			
	       line : expression CR  {printf("YES\n");}

      expression: term 
                | expression ADD term
				| expression SUB term
                ;

            term: single
				| term MUL single
				| term DIV single
				;
			
		  single: NUM
				| VAR
				;
%%
void yyerror(char *str){
    fprintf(stderr,"error:%s\n",str);
}

int yywrap(){
    return 1;
}
int main()
{
    yyparse();
}

```

��������bison�Ĵ����ܣ�

```cpp
����(definations)
%%
����(rules)
%%
����(user code)
//=============================
%{
#include <stdio.h>
#include <string.h>
int yylex(void);
void yyerror(char *);
%}

%token NUM ADD SUB MUL DIV VAR CR

%%
```

���Ƕ�����yylex()������yyerror()���������Ƕ������Ǵ�ǰ�Ѿ������ĺ�����yylex����flex�еĴʷ�����������������Ҫ����������������������ܻᱨ���档

��%token���棬����һЩ�ַ��������Ǿ��������ﶨ������Щ���ţ����ǻᱻ�����Cͷ�ļ�����flex���ã�Ȼ����ͨ��yylex()����return������



�����������ǿ���ؼ��ĵڶ����ִ��룺

```cpp
line_list: line
                | line_list line
                ;

    line : expression CR  {printf("YES\n");}

    expression: term
                | expression ADD term
				| expression SUB term
                ;

    term: single
				| term MUL single
				| term DIV single
				;

    single: NUM
				| VAR
				;
%%
```

���ֿ�ܣ�

**flex**

```cpp
%{
#include "y.tab.h"
void yyerror(char *);
%}

%%

%%
```

**bison**

```cpp
%{
int yylex(void);
void yyerror(char *);
%}
%token 

%%

%%
void yyerror(char *str){
    fprintf(stderr,"error:%s\n",str);
}

int yywrap(){
    return 1;
}
int main()
{
    yyparse();
}

```
