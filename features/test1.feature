Feature: "SAP" Search in Fiori will load some results. In order to Login in Fiori we have to enter the url with the login details

    Scenario: Launch the Fiori url with the given username

        Given I am on the Fiori homepage
        When I Click on Search Button , I Enter a Search Term SAP, the search field, Hit Search Button
        Then I should see the search Results
