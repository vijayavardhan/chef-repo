#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Installs apache package
#
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
	package_name package
	action :install
end

#Starts and enables apache service
service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

