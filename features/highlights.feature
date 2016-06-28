Feature: Kindle Highlights

  In order to make highlighting in ebooks more useful
  As an Amazon user who highlights content via Kindle or Kindle app
  I want to get and interact with my kindle highlights via the command line

  Scenario: Default run without parameters should show help
    Given I successfully run `kindle`
    Then the output should contain:
    """
    kindle help [COMMAND]
    """

  Scenario: `kindle init`
    Given an empty file named "~/.kindle/settings.yml"
    And an empty file named "~/.kindle/database.yml"
    When I run `kindle init`
    Then the file named "~/.kindle/settings.yml" should contain:
    """
    kindle:
      :username:
      :password:
      :domain:
    """
    And the file named "~/.kindle/database.yml" should contain:
    """
    """

  Scenario: `kindle update`
    # Given an empty file named "~/.kindle/settings.json"

  Scenario: `kindle highlights` should do something
    Given an empty file named "~/.kindle/settings.json"
    When I run `kindle highlights`
    And I type "hello, world"
    And I type "quit"
    Then the output should contain:
    """
    dog
    """

  Scenario: `kindle highlights json`

  Scenario: `kindle highlights csv`

  Scenario: `kindle highlights markdown`

  Scenario: `kindle console`
