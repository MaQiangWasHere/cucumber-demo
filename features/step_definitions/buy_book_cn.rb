## encoding: utf-8
#假如 /^我打开京东商城$/ do
#  site="http://www.360buy.com/"
#  @driver.get site
#end
#
#当 /^我搜索"(.*?)"$/ do |keyword|
#  @keyword=keyword
#  searchByKeyword(@keyword)
#end
#
#而且 /^我购买这本书$/ do
#  clickElementBy("class", "btn-buy")
#end
#
#那么 /^我应该看见这本书出现在我的购物车中$/ do
#  gotoShoppingCart
#  verifyItemShowInShoppingCart(@keyword)
#end
#
#def searchByKeyword (keyword)
#  searchKeyword=@driver.find_element :id => "key"
#  searchKeyword.send_keys keyword
#  clickElementBy("class", "button")
#end
#
#def clickElementBy (type, value)
#  if type=="id"
#    element=@driver.find_element :id => value
#  elsif type=="xpath"
#    element=@driver.find_element :xpath => value
#  elsif type=="class"
#    element=@driver.find_element :class => value
#  else
#    p "incorrect selector type"
#  end
#  element.click
#end
#
#def gotoShoppingCart
#  clickElementBy("xpath", "//a[@id=\"GotoShoppingCart\"]")
#end
#
#def verifyItemShowInShoppingCart (keyword)
#  bookTitle=@driver.find_element :class => "p-name"
#  bookTitle.text.should == keyword
#end
#