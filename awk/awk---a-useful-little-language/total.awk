# total.awk
{s += $2}
END {print "Total population:", s}
