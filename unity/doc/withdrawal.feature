Story: Cash Out
    Being a client who is an account holder of Ninja Bank
    Can I cash out
    So that I can buy in places that do not accept debit or credit. (even being in the 21st century hahaha)

Scenario: Cash out
    Given that I have $1000 in my checking account
    When I make a drawing of $200
    Then my final balance should be $800

Scenario: It's bad I do not have a balance
    Given that I have$0 in my checking account
    When I make a $100 cashout
    Then I see a message "Not enough balance to withdraw :("
    And my final balance should be $0

Scenario: I have balance but not enough
    Given that I have $500 in my checking account
    When I get a free kick of $501
    Then I see a message "Not enough balance to withdraw :("
    And my final balance should be $500

Scenario: Threshold for service
    Given that I have $ 1000 in my checking account
    When I get a free kick of $701
    Then I see the message "Maximum limit per service is $ 700"
    And my final balance should be $1000