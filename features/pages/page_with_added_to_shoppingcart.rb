module PageWithAddedToShoppingcart
  include Gizmo::PageMixin
  include BaseFunctions

  def selectors
    {
        :goto_shopping_cart_button => "#GotoShoppingCart",
    }
  end

  def goToShoppingCart
    (find_by_selector :goto_shopping_cart_button).click
  end

end