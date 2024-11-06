from pytest_bdd import scenarios, given, when, then, parsers


scenarios("features")

@given("a cucumber was ordered")
def order_cucumber():
    # some API call to order a cucumber
    pass


@given("the cucumber was delivered", target_fixture="cucumbers")
def ensure_cucumber_delivered():
    # some API call to check the cucumber delivery status
    return {"start": 1, "eat": 0}


@given(parsers.parse("Jens has {start:d} cucumbers"), target_fixture="cucumbers")
def given_cucumbers(start):
    return {"start": start, "eat": 0}


@given(
    parsers.parse("Jens is cooking a dinner with:\n{ingredients}"),
    target_fixture="ingredients",
)
def cook_dinner(ingredients):
    ingredients = ingredients.split("\n")
    return ingredients


@when(parsers.parse("{name} eats {eat:d} cucumbers"))
def eat_cucumbers(cucumbers, eat):
    cucumbers["eat"] += eat


@when("the cucumber is getting rotten")
def order_cucumber():
    pass


@then(parsers.parse("Alex should have {left:d} cucumbers"))
def ensure_cucumbers(cucumbers, left):
    assert cucumbers["start"] - cucumbers["eat"] == left


@then(
    parsers.cfparse(
        "the dinner has {expected_ingredients:String*}", extra_types=dict(String=str)
    )
)
def ensure_dinner(ingredients, expected_ingredients):
    assert ingredients == expected_ingredients


@then("Gui throws the cucumber away")
def ensure_cucumber_thrown_away():
    pass
