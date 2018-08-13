# downloading tar package from internet

execute 'downloading tar package' do
  command 'wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz'
  action :run
end


# untar the tomcat package


execute 'untar tomcat package' do
  command ' tar -xvzf apache-tomcat-8.0.53.tar.gz'
  action :run
end


# Move the extracted content, apache-tomcat-8.5.5, to /opt:

execute 'renaming and moving' do
  command 'sudo mv apache-tomcat-8.0.53 /opt/tomcat'
  action :run
end

#Now you will need to create a systemd service file to manage the Tomcat process so you can run Tomcat as a service.

#Create the systemd service file, tomcat.service, inside the /etc/systemd/system/ directory.

#sudo nano /etc/systemd/system/tomcat.service

template '/etc/systemd/system/tomcat.service' do
  source 'tomcat-service.erb'
  mode '0755'
  action :create
end

# creating tomcat users using template

template '/opt/tomcat/conf/tomcat-users.xml' do
  source 'tomcat-users.erb'
  mode '0755'
  action :create
end

