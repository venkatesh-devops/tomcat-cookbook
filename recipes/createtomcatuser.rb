#It is recommend that Tomcat run as an unprivileged user for security purposes. 
#You will need to create a new user and group that will run the Tomcat service.

#To create a tomcat group, run:

execute 'crete tomcat user' do
  command 'sudo groupadd tomcat'
  action :run
end



#Next, create a new tomcat user and make this user member of 
# the tomcat group with home directory /opt/tomcat:

execute 'create a new tomcat user and make this user member of the tomcat group' do
  command 'sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat'
  action :run
end












