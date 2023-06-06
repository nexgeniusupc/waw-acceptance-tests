Feature: US35: Signing in
    As an software professional I want to sign in with my account to the app so that I use it correctly.

    Scenario: SC23: Correct signing in
        AC28: The user completed all the requested data
        Given the user filled the inputs with the right email and password
        When he presses the 'Sign in' button
        Then he will enter the WAW Application.

        Examples:
            | Email   | Password | Button: 'Sign in' | Display       |
            | Correct | Correct  | Activated         | WAW Home Page |

    Scenario: SC04: Incorrect signing in
        AC29: Incorrect email
        Given the user filled wrongly the email input
        When he presses the 'Sign in' button
        Then he will get an alert message

        Examples:
            | Email             | Password | Button: 'Sign in' | Message                                        |
            | Incorrect/Missing | Correct  | Activated         | Email or password incorrect, please try again. |

        AC30: Incorrect password
        Given the user filled wrongly the password input
        When he presses the 'Sign in' button
        Then he will get an alert message

        Examples:
            | Email   | Password          | Button: 'Sign in' | Message                                        |
            | Correct | Incorrect/Missing | Activated         | Email or password incorrect, please try again. |