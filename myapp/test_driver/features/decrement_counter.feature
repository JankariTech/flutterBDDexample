Feature: Decrement Counter
  As the good shepherd
  I want to be able to decrement the count of my sheeps when one is lost
  So that I can have extra joy icrementing the counter when I found the lost sheep

  Scenario: Counter decreases when the (-) button is pressed
    Given the counter is set to "10"
    When I tap the "decrement" button 1 time
    Then I expect the "counter" to be "9"