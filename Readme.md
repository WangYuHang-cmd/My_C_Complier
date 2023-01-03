## �򵥵�C���Ա�����

#### ��Ŀ�ṹ��

![1672686222390](image/Readme/1672686222390.png)



����Ŀ�����һ��������C���Ա�������Ŀǰ�׶���Ҫ��������¹��ܣ�

**����ʵ�֣�**

* [X] �ʷ�����
* [X] �﷨����&�����﷨��
  * [X] ֧�ֺ�������
* [X] ���ͼ��
* [X] �м��������
* [X] Ŀ���������
  * [X] ����MIPS���ָ��
  * [X] Ŀ������ʹ��MARS����



#### ���з�ʽ

* ��������ϵͳ�Ļ�����������flex�ļ����µ�binĿ¼�ľ���·����ӽ�ϵͳPath�Ļ���������ȷ��flex��bisonָ���������ִ��
* ����program�ļ����ڴ��նˣ�����ʹ��vscodeֱ�ӽ�program��ӽ������������ն������� `run [����׺���ļ���]`,��ʱ�����Զ���[����׺���ļ���]���ļ����з���(.c��׺)

**һ������**

`run test1.c`

ע�⣺ȫ��ʹ��GBK���뷽ʽ��

#### ��Ŀ�ֹ�

* ���꺽202083250002���﷨����&�����﷨����Ŀ���������
* ½����202083260194���ʷ�������readme�ĵ���д
* ����202083260078�����ͼ�飬readme�ĵ���д
* ������202083290054���м�������ɣ�readme�ĵ���д


#### ��Ŀ����

* ��д�ļ���

`lex.l`�ļ�: �ʷ���������

`parser.y`�ļ�: �﷨��������

`def.h`�ļ�: �м�������ɣ���д�﷨��������͡�����ַ������͵ȶ���,�Լ�����ַTAC������,���õ��������м����Դ���

`ast.c`�ļ�: ��д�﷨�������ݹ�����﷨�����������

`semanticAnalysis.c`�ļ� ��Ҫ����:

> ��fillSymbolTable fuction �������崦��
>
> ��ext_var_list function �����б���
>
> ��boolExp & Exp function���ڴ���������ʽ���﷨���
>
> ��semantic_Analysis function������������м����TAC�������
>
> ...

* ��flex/bison�ȱ������ɵ��ļ�

`parser.tab.c`

`parser.tab.h`

`run.bat` �Լ���д�Ľű����������г��������и�ʽΪ `run [filename.c]`

* ����ļ�

`parser.exe ` ��������Ŀ���տ�ִ���ļ�

`object.s` ���ɵ�MIPS��ʽ���ָ��


#### ���н��

* ���ȶ�����Ŀ�ĵ��и����ĳ���

```cpp
void main() {
 int a;
 for (int i = 0; i < 3; ) {
 i = i + 1
 }
}
```

ִ�� `run test3.c`

����C�����﷨��֧����forѭ���ڶ����������˱���

![1672757884582](image/Readme/1672757884582.png)

������ `test1.c`�ļ��ڸ�������

```cpp
int main() {
    int a;
    int i=0;
    for(i=0;i<3;i=i+1) 
    {
        i = i + 1;
    }
}
```

ִ�� `run test1.c`

�ʷ��������֣�

![1672757983141](image/Readme/1672757983141.png)

�﷨�������֣�

**�﷨������**

![1672758023697](image/Readme/1672758023697.png)

�м�������ɣ�

![1672758050551](image/Readme/1672758050551.png)

Ŀ��������ɣ�����MIPS��ʽ���ָ�

![1672758125194](image/Readme/1672758125194.png)

��д `test2.c`�ļ���

```cpp
int talk(){int b=1;return b;}
int main() {
    int a;
    int b=5.0;
    int i=0;
    for(i=0;i<3;i=i+1) 
    {
        i = i + 1;
    }
    talk();
    return 0;
}
```

ִ�� `run test2.c`

�﷨������

`�����﷨��`

```
��������:(1)
   ����: int
   ������:talk
      �޲κ���
   �������:(1)
      �������ı������岿��:
         �ֲ���������:(1)
            ����: int
            ������:
                   b ASSIGNOP
                     INT:1
      ����������䲿��:
         �������:(1)
            ID: b
 ��������:(12)
   ����: int
   ������:main
      �޲κ���
   �������:(12)
      �������ı������岿��:
         �ֲ���������:(3)
            ����: int
            ������:
                   a
         �ֲ���������:(4)
            ����: int
            ������:
                   b ASSIGNOP
                     FLAOT:5.000000
         �ֲ���������:(5)
            ����: int
            ������:
                   i ASSIGNOP
                     INT:0
      ����������䲿��:
         ѭ�����:(9)
            ѭ������:
               ASSIGNOP
                  ID: i
                  INT:0
            ѭ������:
               <
                  ID: i
                  INT:3
            �����仯���ʽ:(9)
               ASSIGNOP
                  ID: i
                  PLUS
                     ID: i
                     INT:1
            ѭ����:(9)
               �������:(9)
                  �������ı������岿��:
                  ����������䲿��:
                     ���ʽ���:(8)
                        ASSIGNOP
                           ID: i
                           PLUS
                              ID: i
                              INT:1
         ���ʽ���:(10)
            ��������:(10)
               ������:talk
         �������:(11)
            INT:0
```

�ʷ�������

![1672758372632](image/Readme/1672758372632.png)

�м��������:

![1672758433009](image/Readme/1672758433009.png)

Ŀ��������ɣ�

```
.data
_Prompt: .asciiz "Enter an integer:  "
_ret: .asciiz "\n"
.globl main
.text
read:
  li $v0,4
  la $a0,_Prompt
  syscall
  li $v0,5
  syscall
  jr $ra
write:
  li $v0,1
  syscall
  li $v0,4
  la $a0,_ret
  syscall
  move $v0,$0
  jr $ra

talk:
  li $t3, 1
  sw $t3, 16($sp)
  lw $t1, 6606639($sp)
  move $t3, $t1
  sw $t3, 1893628486($sp)
  lw $v0,12($sp)
  jr $ra
label1:

main:
  addi $sp, $sp, -48
  lw $t1, 6604480($sp)
  move $t3, $t1
  sw $t3, 20($sp)
  lw $t1, 6604992($sp)
  move $t3, $t1
  sw $t3, 12($sp)
  li $t3, 0
  sw $t3, 28($sp)
  lw $t1, 6604480($sp)
  move $t3, $t1
  sw $t3, 0($sp)
  li $t3, 0
  sw $t3, 32($sp)
  lw $t1, 32($sp)
  move $t3, $t1
  sw $t3, 24($sp)
  li $t3, 3
  sw $t3, 44($sp)
  lw $t1, 24($sp)
  lw $t2, 44($sp)
  blt $t1,$t2,label4
  j label3
label5:
  li $t3, 1
  sw $t3, 36($sp)
  lw $t1, 24($sp)
  lw $t2, 36($sp)
  add $t3,$t1,$t2
  sw $t3, 40($sp)
  lw $t1, 40($sp)
  move $t3, $t1
  sw $t3, 24($sp)
label4:
  li $t3, 1
  sw $t3, 44($sp)
  lw $t1, 24($sp)
  lw $t2, 44($sp)
  add $t3,$t1,$t2
  sw $t3, 48($sp)
  lw $t1, 48($sp)
  move $t3, $t1
  sw $t3, 24($sp)
  j label5
label3:
  move $t0,$sp
  addi $sp, $sp, -20
  sw $ra,0($sp)
  jal talk
  lw $ra,0($sp)
  addi $sp,$sp,20
  sw $v0,32($sp)
  li $t3, 0
  sw $t3, 32($sp)
  lw $v0,32($sp)
  jr $ra
label2:
```


#### �������ܽ�

���꺽������ʵ���ѶȽϴ���˺ķ������ǲ���ʱ�䣬�����������¹������ԭ��������С��ȫ�������У����Ҳ�ӳ�����Ŀ���ύ�����ڡ�Ϊ����ɱ�����Ŀ��������ȥѧϰ��flex��bison/yacc���÷��������·����ӵķ�ʽѧ���˱���ͱ�д�򵥵ļ�������Ŀ��Ȼ��ڶ�������ѧϰ���˵ı���������ô��ģ�½½���������������Ƚ���������Ŀ��ѧϰ�˱����Ŀ�Ľṹ��Ȼ��Ϳ�ʼ�Ա���Ŀ�������ơ�ͨ������ѧϰ������֪ʶ����д�˳����﷨�������ɡ�Ȼ�����Ŀ��������ɣ����ݼ�������ԭ����ϵ��������ǽӴ�����MIPS����������ɷ�ʽ����ͨ��ѧϰ������Ŀ�ı�д��ʽ���ζ�����б�д��������ɱ���Ŀ֮�⣬����С���Ա��ʹ��Github�йܴ�����зֹ�����������������˺�����Ч�ʡ��������ǻ��ཻ��Ҳ������debugЧ�ʵĹؼ���

½���ۣ��ڱ��εı���ԭ�����ҵ��ʵ���У�����Ҫ����ʷ��������֣��������ߣ�ͨ���������ϵ������Լ���ѧ��֪ʶ��д������ʽ��������ĳ�����дʷ������Ĺ�����ʵ���˶�ÿ����������һ��Ķ�λ����ţ����ұ�����������ƫ������ͨ�����ε�ʵ�飬�Ҹ����˽�����ζԳ�����дʷ������Ĺ�����ͬʱ��Ҳ�����ǵ�������ʽ���˸�����̵�ӡ�����ܹ��ܺõذ�����ȥ��Ⲣ�������ԭ����ⲿ��֪ʶ��

���� : ����ʵ�鸺�����ͼ�鲿�֡������Ǵ��������ʽ���ؼ��ǹ�ϵ������ʽ�Ĵ������������������ջ������ʽ���д�����δ���������ʽ����������ȷ�ı�ʶ��������ű����λ��;���������ı�ʶ���ͽ�����ʾ������δ����ı��������Ͳ�ƥ�䣬����ά�������ͣ�ά��Խ�磬ά�ȳ�������ֵ��;���������ͣ�Ϊ���ͳ�������һ-����ʱ���������;�����ͺ��ַ���ͬ����;Ȼ���鸳ֵ����Ƿ�����ֵ����鸳ֵ�������������Ƿ�ƥ�䣬�����ֵ�Ƿ���һ����������ʱ���������++��--�� �Ƿ�����ֵ�������++��--���õ��Ƿ������͵ȡ�ͨ�����ϲ������Ϻ��޸ģ���ǿ����д�͵��Դ����������Ҳ�����˶Ա���������ʶ������Ҳ��һЩ����֮�������簴���������ʽ�ķ�ʽ�����㲼��ֵû����ɣ������������Լ���û�п��ǵ�������������

������������ʵ��������Ҫ�����м��������ģ�飬ͨ����������Ա��ɵĴʷ��������﷨������ģ������ϣ����Ѿ������﷨��������ǰ���£�ͨ����д����ʵ���˽��﷨��ת��Ϊ����ַ�룬��������һ��������Ĵ洢�ṹ�洢���ɵ�����ַ�룬������м�������ɵĹ�����Ϊ����Ŀ����������ṩ���������˴ογ����������С���Աһͬ�����˴������ϣ���ʵ�������м����˶Կγ�֪ʶ�����գ����������˱���Ĺ��̣���������˶Ա���ԭ��γ̵���⡣


��������: https://github.com/WangYuHang-cmd/My_C_Complier


#### �ο����ӣ�

�ο���bison�ļ��ı�д��� https://github.com/gamesgao/ComplierForSmallC/blob/master/Simple.y

�ο�������Ŀ�ṹ�벿���м�������� https://github.com/ICE99125/c_compiler/blob/main/README.md

�ο��˲����﷨�������Ĺ������� https://blog.csdn.net/hello_tomorrow_111/article/details/78745868?spm=1001.2101.3001.6650.18&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-18-78745868-blog-20483209.pc_relevant_aa&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7EBlogCommendFromBaidu%7ERate-18-78745868-blog-20483209.pc_relevant_aa&utm_relevant_index=19

�ο��˲���parser.c�����ݲ�ת��ʹ�ý���parser.y https://download.csdn.net/download/downk/16347479?spm=1001.2101.3001.6661.1&utm_medium=distribute.pc_relevant_t0.none-task-download-2%7Edefault%7ECTRLIST%7EPaid-1-16347479-blog-78745868.pc_relevant_3mothn_strategy_and_data_recovery&depth_1-utm_source=distribute.pc_relevant_t0.none-task-download-2%7Edefault%7ECTRLIST%7EPaid-1-16347479-blog-78745868.pc_relevant_3mothn_strategy_and_data_recovery&utm_relevant_index=1

�ο�����flex��д���� https://github.com/gamesgao/ComplierForSmallC/blob/master/Simple.lex



#### ѧϰ���ͣ�

�� https://blog.csdn.net/wp1603710463/article/details/50365495

�� https://shiyi.blog.csdn.net/article/details/52988428?spm=1001.2101.3001.6650.2&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-52988428-blog-126979975.pc_relevant_3mothn_strategy_recovery&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-52988428-blog-126979975.pc_relevant_3mothn_strategy_recovery&utm_relevant_index=3

�� https://blog.csdn.net/weixin_44007632/article/details/108666375

�� https://youyuyuyou.blog.csdn.net/article/details/78895327?spm=1001.2101.3001.6650.3&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-3-78895327-blog-126979975.pc_relevant_3mothn_strategy_recovery&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-3-78895327-blog-126979975.pc_relevant_3mothn_strategy_recovery&utm_relevant_index=4

�� https://blog.csdn.net/Rosa_zz/article/details/54880256?ops_request_misc=%257B%2522request%255Fid%2522%253A%2522167250214816800211563954%2522%252C%2522scm%2522%253A%252220140713.130102334..%2522%257D&request_id=167250214816800211563954&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduend~default-1-54880256-null-null.142^v68^control,201^v4^add_ask,213^v2^t3_control1&utm_term=lex%E4%BD%BF%E7%94%A8

�� https://blog.csdn.net/qq_36411874/article/details/83000350 Bisonʹ��˵��

��* https://blog.csdn.net/pandaxcl/article/details/1321552 ϵ��[Lex��Yacc�����ŵ���ͨ](https://blog.csdn.net/pandaxcl/article/details/1321552)1~6

�� https://www.freesion.com/article/2457775548/
