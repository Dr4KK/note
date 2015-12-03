@include "lib_netaddr.awk"

function sanitize(ip) {
	split(ip, slice, ".")
	return slice[1]/1 "." slice[2]/1 "." slice[3]/1 "." slice[4]/1
}

BEGIN{
	FS=" , | - "
	print "-N cidr nethash --maxelem 260000\n-N single iphash --maxelem 60000\n"
}

# sanitize ip's
{$1 = sanitize($1); $2 = sanitize($2)}

# range with a single IP
$1==$2 {printf "-A single %s\n", $1} 

# ranges with multiple IP's
$1!=$2{print range2cidr(ip2dec($1), ip2dec($2))}

# footer
END {print "COMMIT\n"}