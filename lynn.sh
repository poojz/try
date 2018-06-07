# Hello World Program in Bash Shell
#read a
#if [[ $a =~ (^3[47][0-9]{13}$|^4[0-9]{12}$) ]]
#then
#echo "creditcard number"
#else
# echo "not a credit card number"
# fi
echo "Please enter your credit card number. "
read card_num
f=$((card_num / 10))
s=`expr $card_num / 10`
echo $f
rev=0
sd=0
or=$card_num
 
while [ $s -gt 0 ]
do
        sd=`expr $s % 10`
        temp=`expr $rev \* 10`
        rev=`expr $temp + $sd`
        s=`expr $s / 10`
done
echo $rev
kl=`expr $rev / 10`
echo $kl
#count= 1
#while [ $count -eq "${#rev}" ]
#do  
 #       if[ $rev %]
 n=1
 fans=0
while [ $n -le ${#rev} ]
do
a=`echo $rev | cut -c $n`
c=`expr $a \* 2`
e=`expr $n + 1`
b=`echo $rev | cut -c $e`
d=`expr $a - 1`
n=`expr $n + 2`
echo $c
echo $d
if [[ $c -gt 9 ]]
then
   m=`expr $c \* 9`
fi
if [[ $d -gt 9 ]]
then
    p=`expr $d \* 9`
fi
ans=$((m + p))
fans=$((fans + ans))
done
echo $ans
mod=`expr $ans % 10`
echo $mod
