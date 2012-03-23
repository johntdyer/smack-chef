#
# Cookbook Name:: smack
# Recipe:: default
#
# Copyright 2012, Voxeo Labs ©2011
#
# All rights reserved - Do Not Redistribute
#
o = node[:smack][:user]
g = node[:smack][:group]

cookbook_file "#{node[:smack][:path]}/smack.jar" do
  source "smack.jar"
  owner o
  group g
  mode "0755"
end
