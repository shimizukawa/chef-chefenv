#
# Cookbook Name:: chefenv
# Attribute:: default
#
# Copyright 2013, Takayuki SHIMIZUKAWA
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default[:chefenv][:user]            = 'root'
default[:chefenv][:dotchefpath]     = nil
default[:chefenv][:node_name]       = ENV['USER']
default[:chefenv][:chef_server_url] = 'http://localhost:4000'
default[:chefenv][:copyright]       = 'cookbook'
default[:chefenv][:email]           = 'cookbook@example.com'
default[:chefenv][:license]         = 'apachev2'

# setup dynamic attribute

unless node[:chefenv][:dotchefpath]
  if node[:chefenv][:user] == 'root'
    path = '/root/.chef'
  else
    path = "/home/#{node[:chefenv][:user]}/.chef"
  end
  override[:chefenv][:dotchefpath] = path
end
