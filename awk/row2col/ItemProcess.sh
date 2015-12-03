#!/bin/bash

#Item1,200
#Item2,500
#Item3,500
#Item2,800
#Item1,600



#print only the first record of the group
#Item1,200
#Item2,500
#Item3,500
awk -F, '!a[$1]++' $1


#join the values of all group items

#Item1,200:600
#Item2,500:800
#Item3,900
awk -F, '{a[$1]=!a[$1]?$2:a[$1]":"$2}  END {  for(i in a) print i,a[i];}' OFS=, $1


#add rownum to each row
awk '{$0=++i","$0; print $0}' $1


