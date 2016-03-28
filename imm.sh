#!/bin/sh

host=
community=

while [ $# -gt 0 ]
do
	case $1 in
		"-H" )
			shift
			host=$1
		;;
		"-c" )
			shift
			community=$1
	esac
	shift
done

if [ -z "$host" -o -z "$community" ]; then
	echo "Usage: imm.sh -H 127.0.0.1 -c snmpuser"
	exit 3
fi

str=
exitcode=0
res=`snmpwalk -v 1 -c $community $host .1.3.6.1.4.1.2.3.51.3.1.4.1.0 | grep -P -i '\d+$' -o`
if [ "$?" -ne 0 ]; then
	str='Unable to retrieve snmp data'
	exitcode=3
fi

case $res in
	255 )
		str='System normal'
		exitcode=0
	;;
	0 )
		str='System encountering critical error'
		exitcode=2
	;;
	2 )
		str='System encountering non-critical error'
		exitcode=1
	;;
	3 )
		str='System encountering error'
		exitcode=2
	;;
esac

echo $str
exit $exitcode
