from behave import given, when, then
from src import number_range

@given('the number is {number}')
def step_given_a_number(context, number):
    context.number = float(number)
@when('I check the number if it is between {num1} and {num2}')
def step_when_categorized(context, num1, num2):
    context.result = number_range.categorize(context.number, float(num1), float(num2))

@then('the result should be "{expected_result}"')
def step_then_result_should_be(context, expected_result):
    assert context.result == expected_result