var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('adds 1 and 4', function(){
    calculator.numberClick(1);
    calculator.operatorClick('+');
    calculator.add(4);
    assert.equal(5, calculator.runningTotal)
  })

  it('subtract 4 from 7', function(){
    calculator.numberClick(7);
    calculator.operatorClick('-');
    calculator.subtract(4);
    assert.equal(3, calculator.runningTotal)
  })

  it('multiply 3 and 5', function(){
    calculator.numberClick(3);
    calculator.operatorClick('*');
    calculator.multiply(5);
    assert.equal(15, calculator.runningTotal)
  })

  it('divide 21 and 7', function(){
    calculator.numberClick(21);
    calculator.operatorClick('/');
    calculator.divide(7);
    assert.equal(3, calculator.runningTotal)
  })

  // Integration tests
  it('concatenates multiple number button clicks', function(){
    calculator.numberClick(2);
    calculator.numberClick(4);
    calculator.numberClick(6);
    calculator.numberClick(8);
    assert.equal(2468, calculator.runningTotal)
  })

  it('chains multiple operators together', function(){
    //bodmas - will divide first
    calculator.numberClick(2);
    calculator.operatorClick('+');
    calculator.add(4);
    calculator.operatorClick('/');
    calculator.divide(2);
    assert.equal(4, calculator.runningTotal)
  })

  it('clears running total without effecting calculation', function(){
    calculator.numberClick(2);
    calculator.operatorClick('+');
    calculator.add(4);
    calculator.clearClick();
    assert.equal(2, calculator.previousTotal)
  })


});
