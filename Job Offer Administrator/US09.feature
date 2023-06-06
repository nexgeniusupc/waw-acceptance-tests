Feature: US09: Publication of job offers
    As an employer I want to advertise projects or jobs so candidates will use my business.

    Scenario: SC10: Posting projects or jobs correctly
        AC15: The employer entered the publication correctly.
        Given that the employer is located in the "Job Offer" section of the website
        When the "New offer" button is pressed
        And the title, description, requirements or salary is correctly entered
        And the "Submit" button is pressed
        Then the system will display the ad in the job offers list
        And the system will display the message "The offer has been added successfully"

        Examples:
            | Section   | Password | Button: 'New offer' | Button: 'Submit' | Message                                 |
            | Job Offer | Correct  | Activated           | Activated        | "The offer has been added successfully" |


    Scenario: SC11: Posting projects or jobs incorrectly
        AC16: The employer entered the publication incorrectly.
        Given that the employer is located in the "Job Offer" section of the website
        When the "New offer" button is pressed
        And the title, description, requirements or salary is not correctly entered
        And the "Submit" button is pressed
        Then the system will display the message "Enter the data correctly".

        Examples:
            | Section   | Password | Button: 'New offer' | Button: 'Submit' | Message                    |
            | Job Offer | Correct  | Activated           | Activated        | "Enter the data correctly" |
