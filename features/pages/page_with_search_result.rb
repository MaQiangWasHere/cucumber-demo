module PageWithSearchResult
  include Gizmo::PageMixin
  include BaseFunctions

  def selectors
    {
        :buy_button => ".btn-buy",
    }
  end

  def buy_button
    find_by_selector :buy_button
  end


  def addToShoppingCart
    (find_by_selector :buy_button).click
  end
end
