Feature: Rotation
  As an iOS developer
  I want to be able to rotate stuff

Scenario: Rotation
  Given I touch "First"
  When I touch "Third"
  Then I wait to see "Cell 2"

  Given I rotate device left
  When I touch "First"
  Then I wait to see "First View"
  When I touch "Third"
  Then I wait to see "Cell 2"

  Given I rotate device right
  And I rotate device right
  When I touch "First"
  Then I wait to see "First View"
  When I touch "Third"
  Then I wait to see "Cell 2"