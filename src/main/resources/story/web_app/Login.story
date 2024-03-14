Scenario: Verify correct log in data
Given I am on page with URL "https://www.saucedemo.com/"
When I enter "standard_user" in field located by "By.id(user-name)"
And I enter "wrong_password" in field located by "By.id(password)"
And I click on element located by "By.id(login-button)"
Then I am on page with URL "https://www.saucedemo.com/inventory.html"


