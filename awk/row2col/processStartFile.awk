/START/ {
    if(x) print x;
    x="";
    print $0;next
}

{x=!x?$0:x","$0}

END {print x;}
