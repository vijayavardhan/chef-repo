#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Installs apache package
package 'apache2' do
	package_name 'httpd'
	action :install
end

#Starts and enables apache service
service 'webserver' do
	service_name 'httpd'
	action [:start, :enable]
end
