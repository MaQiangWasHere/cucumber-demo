require 'rubygems'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'gizmo'
World(Gizmo::Helpers)

Capybara.default_driver= :selenium

module Capybara
  module DSL
    alias :response :page
  end
end

Capybara.default_wait_time = 30

