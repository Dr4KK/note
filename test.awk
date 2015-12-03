function sanitize(ip){
    split(ip,slice,".")
    return slice[1]/1 "." slice[2]/1 "." slice[3]/1 "." slice[4]/1
}
BEGIN{
    FS=" , | -"
}

{$1 = sanitize($1); $2 = sanitize($2); print $1"  " $2;}
