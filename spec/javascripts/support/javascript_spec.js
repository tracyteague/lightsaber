describe("Canarytest", function(){
  it("should work", function(){
    expect(true).toBe(true);
  });
});

describe("calculator", function(){
  it("should exist", function(){
    expect(calculator).toBeDefined();
  });

  it("should have a function 'add()'", function() {
    expect(calculator.add).toBeDefined();
  });

  it("should have a function to find the sum of two numbers", function() {
    expect(calculator.add(2,3)).toEqual(5);
  });

  it("should have a function to find the difference between two numbers", function(){
    expect(calculator.subtract(5,3)).toEqual(2);
  });

  it("should have a function to find the product of two numbers", function(){
    expect(calculator.multiply(5,3)).toEqual(15);
  });

//this one does not pass - not sure why
  it("should have a function to find the quotient of two numbers", function(){
    expect(calculator.divide(1,1)).toEqual(1);
  });

});

