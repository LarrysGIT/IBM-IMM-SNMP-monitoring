# IBM-IMM-SNMP-monitoring

A very simple shell script monitor health status of a IBM server.
SNMP data comes from IMM component.
Sample model of my server is System x3650 M5.
Of course, your server IMM component should purchased a valid lic to work.
There is no details of what or where the problem is, just a simple check to tell you there is an unusual event on server.
For more details, you can do more research on SNMP OID data.
	1. imm.mib/immalert.mib - snmp definitions, for reference, removalbe.
	2. imm.sh - the script, embed with my nagios server.
	3. imm.snmp.txt - a data sample from my server, reference only, removable.
If you don't know how to use a mib file, a [mib browser] probably can help you out.

- Larry.Song@outlook.com