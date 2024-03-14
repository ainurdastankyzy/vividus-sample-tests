Feature: Verify functionality of text boxes on demoqa.com website

Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}
|FullName    | By.id(userName)    |
|Email      | By.id(userEmail)    |
|CurrentAddress | By.id(currentAddress) |
|PermanentAddress| By.id(permanentAddress)|
|OutputText   | By.id(output)     |
|name      | By.id(name)      |
|email      | By.id(email)      |
|currentAddress | By.id(currentAddress) |
|permanentAddress| By.id(permanentAddress)|
Scenario: Verify filling out text boxes and submission
  Given I am on page with URL `https://demoqa.com/text-box`
When I enter `John Doe` in field located by `<FullName>`
When I enter `johndoe@example.com` in field located by `<Email>`
When I enter `123 Main Street` in field located by `<CurrentAddress>`
When I enter `456 Oak Avenue` in field located by `<PermanentAddress>`
When I click on the button with ID "submit"
When I wait until the element located by `<OutputText>` appears
Then the text of the element located by "<name>" should contain "John Doe"
Then the text of the element located by "<email>" should contain "johndoe@example.com"
Then the text of the element located by "<currentAddress>" should contain "123 Main Street"
Then the text of the element located by "<permanentAddress>" should contain "456 Oak Avenue"