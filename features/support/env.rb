require 'rubygems'
require 'rspec/expectations'
require 'watir-webdriver'
require 'win32ole'
#require 'singleton'
require 'fileutils'
require 'net/smtp'
require 'mailfactory'
#require File.dirname(__FILE__) + '\page\common.rb'
Browser = Watir::Browser :IE

Before do
	@browser = Browser.new
	@browser.wait
	@browser.maximize
end

After do
	@browser.close
	sleep 2
end