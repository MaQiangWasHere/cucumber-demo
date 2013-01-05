module PageWithHome
  include Gizmo::PageMixin
  include BaseFunctions

  def selectors
    {
        :search_key => "#key",
        :search_button =>  "#key ~ .button",
    }
  end

  def searchByKeyword keyword
    (find_by_selector :search_key).set keyword
    (find_by_selector :search_button).click
  end

end