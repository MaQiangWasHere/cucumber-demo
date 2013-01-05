Given /^I open "(.*?)"$/ do |site|
  visit site
end

When /^I search for "(.*?)"$/ do |keyword|
  @keyword=keyword
  searchByKeyword(@keyword)
end

And /^I buy the book$/ do
  find('.btn-buy').click
end

Then /^I should see there is available tools I search$/ do
  find('.btn-buy').visible?.should be_true
end

def switch_to_new_window
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end

Then /^I should see the book in my shopping cart$/ do
  switch_to_new_window()
  gotoShoppingCart
  page.should have_css(".p-name", :text => @keyword)
end

def searchByKeyword (keyword)
  fill_in 'key', :with => keyword
  find('.button').click
end

def gotoShoppingCart
  find('#GotoShoppingCart').click
end

def verifyItemShowInShoppingCart (keyword)
  page.should have_css(".p-name", :text => keyword)
end
