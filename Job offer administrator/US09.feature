Feature: US35: Publication of job offers
    As an employer I want to advertise projects or jobs so candidates will use my business.

    Scenario: SC11: Posting projects or jobs incorrectly
        AC16: The employer entered the publication incorrectly.
        Given Given that the employer is located in the "Job Offer" section of the website
        When you press the "Post Job Ad" button and you do not correctly enter the data such as title, description, requirements and salary 
        And  press the "Post Ad" button.
        Then the system will display the message "Enter the data correctly".

        Examples:
            | Section   | Password | Button: 'Post Job Ad' | Button: 'Post Ad' | Message
            | Job Offer | Correct  | Activated              | Activated        | "Enter the data correctly"

   