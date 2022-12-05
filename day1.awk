BEGIN { ACC=0 }

/^$/ { print ACC; ACC=0}
/[0-9]/ { ACC=ACC+$1; }
END { print ACC }
