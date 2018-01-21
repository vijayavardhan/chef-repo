hostname = node['hostname']

file '/etc/motd' do
	content "Hostname of this Node is :#{hostname}"
end
