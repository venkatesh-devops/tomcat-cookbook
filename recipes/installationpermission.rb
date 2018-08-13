

# Next you will need to give proper permission to the tomcat user to access to the Tomcat installation.


execute 'permission to change group' do
  command 'sudo chgrp -R tomcat /opt/tomcat'
  action :run
end


execute 'change owner permission' do
    command 'sudo chown -R tomcat /opt/tomcat'
    action :run
  end

  
  execute 'directory change permission' do
    command 'sudo chmod -R 755 /opt/tomcat'
    action :run
  end
  
execute 'reloading the daemon' do
  command 'sudo systemctl daemon-reload'
  action :run
end

  
service 'tomcat' do
  action :start
end