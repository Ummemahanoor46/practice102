Feature: Signup Feature

  Background:
    Given user in TalentTEK Homepage
    And user click on Create New Account button
@test
  Scenario: User should be able to sign up with valid credentials
    And user enter valid first name
    And user enter valid last name
    And user enter new valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    And user will receive "success! and student ID" message
    And user clicks on ok button
    And user enter student id and password
    When user clicks on login button
    Then the user should be able to login successfully

  # Scenario: firstname and lastname test cases

  # alphanumeric credentials
  Scenario: User should not be able to sign up with alphanumeric credentials in first name field
    And user enter alphanumeric first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

  Scenario: User should not be able to sign up with alphanumeric credentials in last name field
    And user enter valid first name
    And user enter alphanumeric last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

  Scenario: User should not be able to sign up with alphanumeric credentials in last name and first name field
    And user enter alphanumeric first name
    And user enter alphanumeric last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

    #numeric credentials
  Scenario: User should not be able to sign up with numeric credentials in first name field
    And user enter numeric first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

  Scenario: User should not be able to sign up with numeric credentials in last name field
    And user enter valid first name
    And user enter numeric last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

  Scenario: User should not be able to sign up with numeric credentials in last name and first name field
    And user enter numeric first name
    And user enter numeric last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

    #field empty
  Scenario: User should not be able to sign up with empty field in first name field
    And user leaves first name field empty
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then User should see "Please fill out field." message.

  Scenario: User should not be able to sign up with empty field in first name field
    And user enter valid first name
    And user leaves last name field empty
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then User should see "please fill out field" message.

    # special character
  Scenario: User should not be able to sign up with any special characters in first name field
    And user enter valid first name
    And user enter any special characters for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

  Scenario: User should not be able to sign up with any special characters in first name field
    And user enter any special characters for first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

  Scenario: User should not be able to sign up with any special characters in first name and last name field
    And user enter any special characters for first name
    And user enter any special characters for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name and last name cannot contain numeric or special characters" error.

  #should allow 3 alphabetical characters
  Scenario: User should be able to sign up with 3 alphabetical characters in first name field
    And user enter 3 alphabetical characters for first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should be able to login successfully

  Scenario: User should be able to sign up with 3 alphabetical characters in last name field
    And user enter valid last name
    And user enter 3 alphabetical characters for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should be able to login successfully

  Scenario: User should be able to sign up with 3 alphabetical characters in last name field
    And user enter 3 alphabetical characters for first name
    And user enter 3 alphabetical characters for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should be able to login successfully

#should not be less than 3 alphabetical characters
  Scenario: User should not be able to sign up with less 3 alphabetical characters in first name field
    And user enter two alphabetical characters for first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name should be at least 3 characters" error.

  Scenario: User should not be able to sign up with less 3 alphabetical characters in last name field
    And user enter valid first name
    And user enter 2 alphabetical characters for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name should be at least 3 characters" error.

  Scenario: User should not be able to sign up with less 3 alphabetical characters in last name field
    And user enter 2 alphabetical characters for first name
    And user enter 2 alphabetical characters for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive "First name should be at least 3 characters" error.

  # should allow more than 12 alphabetical characters
  Scenario: User should be able to sign up with more then 12 alphabetical characters in first name and last name field
    And user enter more then twelve alphabetical characters for first name
    And user enter more then twelve alphabetical characters for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should be able to login successfully


  #name doesn’t need to be unique
  Scenario: User should be able to sign up with similar name or characters in first name and last name field
    And user enter common name for first name
    And user enter common name for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should be able to login successfully

  Scenario: User should be able to sign up with similar name or characters in first name field
    And user enter common name for first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should be able to login successfully

  Scenario: User should be able to sign up with similar name or characters in first name and last name field
    And user enter valid first name
    And user enter common name for last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should be able to login successfully

  Scenario: User should not be able to sign up with invalid email address
    And user enter valid first name
    And user enter valid last name
    And user enter invalid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive error message: "Please enter a valid email address!"

  Scenario: User should not be able to sign up with exiting email address
    And user enter valid first name
    And user enter valid last name
    And user enter exiting email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive error message: "Email already exists"

  Scenario: User should not be able to sign up with Passwords containing less then 6 character
    And user enter valid first name
    And user enter valid last name
    And user enter valid email address
    And user enter Passwords containing less then six characters
    And user enter same characters from password field in confirm password field
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should receive error message: "Passwords must be at least 6 character"

  Scenario: User should not be be able to sign up without selecting the term and condition policy check box
    And user enter valid first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter valid confirm password
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user select gender
    And user does not click the term and condition policy
    And user click on Create my Account button
    Then the user should receive an error message: "Please check this box if you want to proceed"

  Scenario: User should not be able to sign up without selecting gender radio button
    And user enter valid first name
    And user enter valid last name
    And user enter valid email address
    And user enter valid password
    And user enter same characters from password field in confirm password field
    And user enter their month as "May" under dob
    And user enter their day as "20" under dob
    And user enter their year as "1995" under dob
    And user does not select gender radio button 'male' or 'female'
    And user click the term and condition policy
    And user click on Create my Account button
    Then the user should see error message: "Please select one of these options"




