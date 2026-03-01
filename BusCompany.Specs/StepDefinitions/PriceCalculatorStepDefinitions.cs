using BusCompany;
using FluentAssertions;
using Reqnroll;

namespace BusCompany.Specs.StepDefinitions;

[Binding]
public sealed class PriceCalculatorStepDefinitions
{
    private readonly PriceCalculator _calculator = new();

    private int _distance;
    private decimal _result;

    [Given("a customer travels {int} km")]
    public void GivenACustomerTravels(int distance)
    {
        _distance = distance;
    }

    [When("the price is calculated")]
    public void WhenThePriceIsCalculated()
    {
        _result = _calculator.CalculatePrice(_distance);
    }

    [Then("the price should be {decimal}")]
    public void ThenThePriceShouldBe(decimal expectedPrice)
    {
        _result.Should().Be(expectedPrice);
    }
}
