Then /^show me the page$/ do
  save_and_open_page
end

Then /^pause$/ do
  puts 'Cucumber paused. Press Enter to continue...'
  STDIN.gets
end

Then /^debug$/ do
  require('ruby-debug'); debugger
  x = 1
end