describe("Canarytest", function(){
  it("should work", function(){
    expect(true).toBe(true);
  });
});

describe("calculator", function(){
  it("should exist", function(){
    expect(calculator).toBeDefined();
  });

  it("should have an existing function 'add()'", function() {
    expect(calculator.add).toBeDefined();
  });

  it("should have a working function add() to find the sum of two numbers", function() {
    expect(calculator.add(2,3)).toEqual(5);
  });

  it("should have an existing function 'subtract()'", function() {
    expect(calculator.subtract).toBeDefined();
  });

  it("should have a working function subtract() to find the difference between two numbers", function(){
    expect(calculator.subtract(5,3)).toEqual(2);
  });

  it("should have an existing function 'multiply()'", function() {
    expect(calculator.multiply).toBeDefined();
  });

  it("should have a working function multiply() to find the product of two numbers", function(){
    expect(calculator.multiply(5,3)).toEqual(15);
  });

  it("should have an existing function 'divide()'", function() {
    expect(calculator.divide).toBeDefined();
  });

  it("should have a working function divide() to find the quotient of two numbers", function(){
    expect(calculator.divide(1,1)).toEqual(1);
  });

});

describe("errorModule", function(){
  it("should exist", function(){
    expect(errorModule).toBeDefined();
  });

  it("should have an existing function 'show()'", function() {
    expect(errorModule.show).toBeDefined();
  });

  it("should have an existing function 'hide()'", function() {
    expect(errorModule.hide).toBeDefined();
  });

  it("should have an existing function 'change()'", function() {
    expect(errorModule.change).toBeDefined();
  });
});