# IBM-IMM-SNMP-monitoring

A very simple shell script monitor health status of a IBM server.
SNMP data comes from IMM component.
Sample model of my server is System x3650 M5.
Of course, your should purchased a valid lic to make IMM works.
There is no details of what or where the problem is, just a simple check to tell you there is an unusual event on server.
For detailed events, you need to do more research on SNMP OID data and modify the sh script.
	1. imm.mib&immalert.mib - snmp definitions, for reference, safe to remove.
	2. imm.sh - the script, embed with nagios, returns exit code represent server health status.
	3. imm.snmp.txt - a data sample from my server, reference only, safe to remove.
If you don't know how to look into a mib file, a [mib browser] might can help you out.

- Larry.Song@outlook.com