# encoding: utf-8
假如 /^我打开京东商城$/ do
  site="http://www.360buy.com/"
  visit site
end

当 /^我搜索"(.*?)"$/ do |keyword|
  @keyword=keyword
  searchByKeyword(@keyword)
end

而且 /^我购买这本书$/ do
  find('.btn-buy').click
end

那么 /^我应该看见这本书出现在我的购物车中$/ do
  switch_to_new_window
  gotoShoppingCart
  verifyItemShowInShoppingCart(@keyword)
end

def searchByKeyword (keyword)
  fill_in 'key', :with => keyword
  find('.button').click
end

def switch_to_new_window
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
end

def clickElementBy (type, value)
  if type=="id"
    element=@driver.find_element :id => value
  elsif type=="xpath"
    element=@driver.find_element :xpath => value
  elsif type=="class"
    element=@driver.find_element :class => value
  else
    p "incorrect selector type"
  end
  element.click
end

def gotoShoppingCart
  find('#GotoShoppingCart').click
end

def verifyItemShowInShoppingCart (keyword)
  page.should have_css(".p-name", :text => keyword)
end
