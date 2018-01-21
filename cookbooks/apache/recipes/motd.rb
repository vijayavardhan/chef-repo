ipaddress = node['ipaddress']

file '/etc/motd' do
	content "The IP Address for this node is  :#{ipaddress}/n"
end
