Given /^I open "(.*?)"$/ do |site|
  visit site
end

When /^I search for "(.*?)"$/ do |keyword|
  on_page_with :home do |page|
    page.searchByKeyword keyword
  end
end

And /^I buy the book$/ do
  on_page_with :search_result do |page|
    page.addToShoppingCart
  end
end

Then /^I should see there is available tools I search$/ do
  on_page_with :search_result do |page|
    page.buy_button.visible?.should be_true
  end
end


def switch_to_new_window
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end

Then /^I should see the book in my shopping cart$/ do
  switch_to_new_window()
  on_page_with :added_to_shoppingcart do |page|
    page.goToShoppingCart
  end
  page.should have_css(".p-name", :text => @keyword)
end
