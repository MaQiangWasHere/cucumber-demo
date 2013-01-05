# encoding: gb2312
Feature:
  As a consumer
  I want to search and see if the tool i want is available

  @single
  Scenario: Consumer can find a tool and it's available
    Given I open "http://www.360buy.com/"
    When I search for "bosch 电锤"
    Then I should see there is available tools I search