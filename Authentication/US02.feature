Feature: US02: Personal information registration
    As an software professional I want to register my personal information so that I can verify my identity.

    Scenario: SC03: Correct registration
        AC06: The user completed all the requested data
        Given the user registered the requested personal information
        When he presses the 'Sign up' button
        Then he will have created a new WAW account

        Examples:
            | Information | Button: 'Sign up' | Message                                       |
            | Complete    | Activated         | Verify your account in the email we sent you. |

    Scenario: SC04: Incorrect registration
        AC07: The user did not complete all the requested data.
        Given the user did not fill out the email input
        When he presses the 'Sign up' button
        Then he will get a message alert about what happenned.

        Examples:
            | Information | Input: 'Email' | Button: 'Sign up' | Message                            |
            | Incomplete  | Missing        | Activated         | Email missing, please fill it out. |