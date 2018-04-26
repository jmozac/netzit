require 'tcpdump'

TCPDump.initialize
TCPDump.set_options(
	interface: "lo -e icmp[icmptype] == 8 -w output.pcap -U -x",
	print_each_packet: true,
	stdout_buffered: true
)
TCPDump.tcpdump
