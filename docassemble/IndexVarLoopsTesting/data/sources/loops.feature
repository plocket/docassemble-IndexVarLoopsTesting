Feature: Index vars loops

@ex1
Scenario: I loop
  Given I start the interview at "loops.yml"
  And I get to "end" with this data:
    | var | value | trigger |
    | order_list.target_number | 2 | order_list.target_number |
    | order_list[i].name.text | 1 | order_list[0].name.text |
    | order_list[i].amount | 1 | order_list[0].name.text |
    | order_list[i].notes | 1 | order_list[0].name.text |
    | order_list[i].periodic_amount | 1 | order_list[0].name.text |
    | order_list[i].name.text | 2 | order_list[1].name.text |
    | order_list[i].amount | 2 | order_list[1].name.text |
    | order_list[i].notes | 2 | order_list[1].name.text |
    | order_list[i].periodic_amount | 2 | order_list[1].name.text |
  And I take a screenshot
  Then the question id should be "end"