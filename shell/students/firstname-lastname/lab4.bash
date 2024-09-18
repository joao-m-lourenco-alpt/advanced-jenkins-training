USAGe=df/root 


USAGE=(df / | grep / | awk '{ print $5 }' | sed 's/%//')
echo $USAGE