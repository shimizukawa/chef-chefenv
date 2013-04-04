#
# Cookbook Name:: chefenv
# Recipe:: default
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

include_recipe "git"  # install newest git

gem_package 'chef'
gem_package 'librarian-chef'

directory "#{node.chefenv.dotchefpath}" do
  owner node.chefenv.user
end

template "#{node.chefenv.dotchefpath}/knife.rb" do
  source 'knife.rb.erb'
  owner node.chefenv.user
  action :create_if_missing
end
