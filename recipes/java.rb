# updating the packages

 apt_update 'update_daily' do
    action [:periodic, :update]
    frequency 3600
  end

  package 'default-jdk' do
    action :install
  end
  
  