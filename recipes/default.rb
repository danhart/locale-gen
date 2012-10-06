#
# Cookbook Name:: locale-gen
# Recipe:: default
# Author:: Dan Hart <dan@danhart.co.uk>
#
# Copyright 2008-2009, Dan hart.
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

execute "locale-gen" do
  action :nothing
  command "locale-gen"
end

file "/etc/locale.gen" do
  action :create
  owner "root"
  group "root"
  mode "0644"
  content node[:localegen][:lang].join("\n") + "\n"
  notifies :run, "execute[locale-gen]", :immediate
end
