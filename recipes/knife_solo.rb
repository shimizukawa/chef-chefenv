#
# Cookbook Name:: chefenv
# Recipe:: knife_solo
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

include_recipe "rbenv"

cookbook_file "#{Chef::Config[:file_cache_path]}/knife-solo-0.3.0.pre4.gem"

rbenv_gem "knife-solo" do
  rbenv_version "1.9.3-p392"
  source "#{Chef::Config[:file_cache_path]}/knife-solo-0.3.0.pre4.gem"
end

