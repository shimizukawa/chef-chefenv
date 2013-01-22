default[:chefenv][:user]            = 'root'
default[:chefenv][:dotchefpath]     = '/root/.chef'
default[:chefenv][:node_name]       = ENV['USER']
default[:chefenv][:chef_server_url] = 'http://localhost:4000'
default[:chefenv][:copyright]       = 'cookbook'
default[:chefenv][:email]           = 'cookbook@example.com'
default[:chefenv][:license]         = 'apachev2'
