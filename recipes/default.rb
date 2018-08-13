#
# Cookbook:: tomcat-8.0.53
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


include_recipe 'tomcat-8.0.53::java'
include_recipe 'tomcat-8.0.53::createtomcatuser'
include_recipe 'tomcat-8.0.53::installtomcat'
include_recipe 'tomcat-8.0.53::installationpermission'



