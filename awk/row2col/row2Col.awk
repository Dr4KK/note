BEGIN{
    FS="\""; print "Cust-Number, Cust-Name, Cust-Town, Cust-purchase"}
    /hobby/ || !NF{next}
    /purchase/{print $2;next }
    {printf $2",  "}
