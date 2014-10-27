class windows_firewall::baseline_rules {
    windows_firewall::rule { 'System Center 2012 R2 Configuration Manager':
        description => 'Created by System Center 2012 R2 Configuration Manager for the remote control service',
        application_name => 'C:\\Windows\\CCM\\RemCtrl\\CmRcService.exe',
        service_name => '',
        protocol => '6',
        local_ports => '2701',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => 'System Center 2012 R2 Configuration Manager',
        profiles => '1',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'SNMP Service (UDP In)':
        description => 'Inbound rule for the Simple Network Management Protocol (SNMP) Service to allow SNMP traffic. [UDP 161]',
        application_name => 'C:\\Windows\\system32\\snmp.exe',
        service_name => 'SNMP',
        protocol => '17',
        local_ports => '161',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@snmp.exe,-3',
        profiles => '1',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'SNMP Service LocalSubnet (UDP In)':
        description => 'Inbound rule for the Simple Network Management Protocol (SNMP) Service to allow SNMP traffic. [UDP 161]',
        application_name => 'C:\\Windows\\system32\\snmp.exe',
        service_name => 'SNMP',
        protocol => '17',
        local_ports => '161',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => 'LocalSubnet',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@snmp.exe,-3',
        profiles => '6',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - IPv6 (IPv6-In)':
        description => 'Inbound rule required to permit IPv6 traffic for ISATAP (Intra-Site Automatic Tunnel Addressing Protocol) and 6to4 tunneling services.',
        application_name => 'System',
        service_name => '',
        protocol => '41',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - IPHTTPS (TCP-In)':
        description => 'Inbound TCP rule to allow IPHTTPS tunneling technology to provide connectivity across HTTP proxies and firewalls.',
        application_name => 'System',
        service_name => '',
        protocol => '6',
        local_ports => 'IPHTTPS',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Teredo (UDP-In)':
        description => 'Inbound UDP rule to allow Teredo edge traversal, a technology that provides address assignment and automatic tunneling for unicast IPv6 traffic when an IPv6/IPv4 host is located behind an IPv4 network address translator.',
        application_name => 'C:\\Windows\\system32\\svchost.exe',
        service_name => 'iphlpsvc',
        protocol => '17',
        local_ports => 'Teredo',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Dynamic Host Configuration Protocol for IPv6(DHCPV6-In)':
        description => 'Allows DHCPV6 (Dynamic Host Configuration Protocol for IPv6) messages for stateful and stateless configuration.',
        application_name => 'C:\\Windows\\system32\\svchost.exe',
        service_name => 'dhcp',
        protocol => '17',
        local_ports => '546',
        remote_ports => '547',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Dynamic Host Configuration Protocol (DHCP-In)':
        description => 'Allows DHCP (Dynamic Host Configuration Protocol) messages for stateful auto-configuration.',
        application_name => 'C:\\Windows\\system32\\svchost.exe',
        service_name => 'dhcp',
        protocol => '17',
        local_ports => '68',
        remote_ports => '67',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Internet Group Management Protocol (IGMP-In)':
        description => 'IGMP messages are sent and received by nodes to create, join and depart multicast groups.',
        application_name => 'System',
        service_name => '',
        protocol => '2',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Destination Unreachable Fragmentation Needed (ICMPv4-In)':
        description => 'Destination Unreachable Fragmentation Needed error messages are sent from any node that a packet traverses which is unable to forward the packet because fragmentation was needed and the don’t fragment bit was set.',
        application_name => 'System',
        service_name => '',
        protocol => '1',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '3:4',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Multicast Listener Done (ICMPv6-In)':
        description => 'Multicast Listener Done messages inform local routers that there are no longer any members remaining for a specific multicast address on the subnet.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => 'LocalSubnet',
        icmp_types_and_codes => '132:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Multicast Listener Report v2 (ICMPv6-In)':
        description => 'Multicast Listener Report v2 message is used by a listening node to either immediately report its interest in receiving multicast traffic at a specific multicast address or in response to a Multicast Listener Query.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => 'LocalSubnet',
        icmp_types_and_codes => '143:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Multicast Listener Report (ICMPv6-In)':
        description => 'The Multicast Listener Report message is used by a listening node to either immediately report its interest in receiving multicast traffic at a specific multicast address or in response to a Multicast Listener Query.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => 'LocalSubnet',
        icmp_types_and_codes => '131:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Multicast Listener Query (ICMPv6-In)':
        description => 'An IPv6 multicast-capable router uses the Multicast Listener Query message to query a link for multicast group membership.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => 'LocalSubnet',
        icmp_types_and_codes => '130:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Router Solicitation (ICMPv6-In)':
        description => 'Router Solicitation messages are sent by nodes seeking routers to provide stateless auto-configuration.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '133:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Router Advertisement (ICMPv6-In)':
        description => 'Router Advertisement messages are sent by routers to other nodes for stateless auto-configuration.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => 'fe80::/64',
        icmp_types_and_codes => '134:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Core Networking - Neighbor Discovery Advertisement (ICMPv6-In)':
        description => 'Neighbor Discovery Advertisement messages are sent by nodes to notify other nodes of link-layer address changes or in response to a Neighbor Discovery Solicitation request.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '136:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'True',
        action => '1',
        edge_traversal_options => '1',
    }
    windows_firewall::rule { 'Core Networking - Neighbor Discovery Solicitation (ICMPv6-In)':
        description => 'Neighbor Discovery Solicitations are sent by nodes to discover the link-layer address of another on-link IPv6 node.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '135:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'True',
        action => '1',
        edge_traversal_options => '1',
    }
    windows_firewall::rule { 'Core Networking - Parameter Problem (ICMPv6-In)':
        description => 'Parameter Problem error messages are sent by nodes as a result of incorrectly generated packets.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '4:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'True',
        action => '1',
        edge_traversal_options => '1',
    }
    windows_firewall::rule { 'Core Networking - Time Exceeded (ICMPv6-In)':
        description => 'Time Exceeded error messages are generated from any node that a packet traverses if the Hop Limit value is decremented to zero at any point on the path.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '3:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'True',
        action => '1',
        edge_traversal_options => '1',
    }
    windows_firewall::rule { 'Core Networking - Packet Too Big (ICMPv6-In)':
        description => 'Packet Too Big error messages are sent from any node that a packet traverses which is unable to forward the packet because the packet is too large for the next link.',
        application_name => '',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '2:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'True',
        action => '1',
        edge_traversal_options => '1',
    }
    windows_firewall::rule { 'Core Networking - Destination Unreachable (ICMPv6-In)':
        description => 'Destination Unreachable error messages are sent from any node that a packet traverses which is unable to forward the packet for any reason except congestion.',
        application_name => 'System',
        service_name => '',
        protocol => '58',
        local_ports => '',
        remote_ports => '',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '1:*',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-25000',
        profiles => '2147483647',
        edge_traversal => 'True',
        action => '1',
        edge_traversal_options => '1',
    }
    windows_firewall::rule { 'Remote Desktop - Shadow (TCP-In)':
        description => 'Inbound rule for the Remote Desktop service to allow shadowing of an existing Remote Desktop session. (TCP-In)',
        application_name => 'C:\\Windows\\system32\\RdpSa.exe',
        service_name => '',
        protocol => '6',
        local_ports => '*',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-28752',
        profiles => '7',
        edge_traversal => 'True',
        action => '1',
        edge_traversal_options => '2',
    }
    windows_firewall::rule { 'Remote Desktop - User Mode (UDP-In)':
        description => 'Inbound rule for the Remote Desktop service to allow RDP traffic. [UDP 3389]',
        application_name => 'C:\\Windows\\system32\\svchost.exe',
        service_name => 'termservice',
        protocol => '17',
        local_ports => '3389',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-28752',
        profiles => '7',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Remote Desktop - User Mode (TCP-In)':
        description => 'Inbound rule for the Remote Desktop service to allow RDP traffic. [TCP 3389]',
        application_name => 'C:\\Windows\\system32\\svchost.exe',
        service_name => 'termservice',
        protocol => '6',
        local_ports => '3389',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-28752',
        profiles => '7',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Windows Remote Management - Compatibility Mode (HTTP-In)':
        description => 'Compatibility mode inbound rule for Windows Remote Management via WS-Management. [TCP 80]',
        application_name => 'System',
        service_name => '',
        protocol => '6',
        local_ports => '80',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-30252',
        profiles => '2147483647',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Windows Remote Management (HTTP-In)':
        description => 'Inbound rule for Windows Remote Management via WS-Management. [TCP 5985]',
        application_name => 'System',
        service_name => '',
        protocol => '6',
        local_ports => '5985',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => 'LocalSubnet',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-30267',
        profiles => '4',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
    windows_firewall::rule { 'Windows Remote Management (HTTP-In)':
        description => 'Inbound rule for Windows Remote Management via WS-Management. [TCP 5985]',
        application_name => 'System',
        service_name => '',
        protocol => '6',
        local_ports => '5985',
        remote_ports => '*',
        local_addresses => '*',
        remote_addresses => '*',
        icmp_types_and_codes => '',
        direction => '1',
        interfaces => '',
        interface_types => 'All',
        enabled => 'True',
        grouping => '@FirewallAPI.dll,-30267',
        profiles => '3',
        edge_traversal => 'False',
        action => '1',
        edge_traversal_options => '0',
    }
}