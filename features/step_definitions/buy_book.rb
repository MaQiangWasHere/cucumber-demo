Given /^I open "(.*?)"$/ do |site|
  @driver.get site
end

When /^I search for "(.*?)"$/ do |keyword|
  @keyword=keyword
  searchByKeyword(@keyword)
end

And /^I buy the book$/ do
  clickElementBy("class", "btn-buy")
end

Then /^I should see the book in my shopping cart$/ do
  gotoShoppingCart
  verifyItemShowInShoppingCart(@keyword)
end

def searchByKeyword (keyword)
  searchKeyword=@driver.find_element :id => "key"
  searchKeyword.send_keys keyword
  clickElementBy("class", "button")
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
  clickElementBy("xpath", "//a[@id=\"GotoShoppingCart\"]")
end

def verifyItemShowInShoppingCart (keyword)
  bookTitle=@driver.find_element :class => "p-name"
  bookTitle.text.should == keyword
end
  