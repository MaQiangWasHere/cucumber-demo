Feature:
  In order to purchase it later
  As a consumer
  I want to add a book to my shopping cart

  @single
  Scenario: Consumer can add a book to shopping cart
    Given I open "http://www.360buy.com/"
    When I search for "The Lean Startup"
    And I buy the book
    Then I should see the book in my shopping cart

  @multiple
  Scenario Outline: Consumer can add a book to shopping cart
    Given I open "http://www.360buy.com/"
    When I search for "<book>"
    And I buy the book
    Then I should see the book in my shopping cart
  Examples:
    | book             |
    | The Lean Startup |
    | Steve Jobs       |
