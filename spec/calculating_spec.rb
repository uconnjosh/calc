require ('rspec')
require ('calculating')

describe('calc') do
  it('Takes a sentence command and finds a sum') do  
    calc("What is 5 plus 4").should(eq(9))
  end
  it('Takes a sentence and find correct val for sub, mult, div') do
    calc("What is 5 / 4").should(eq())   
    calc("What is 6 * 9").should(eq())
    calc("What is 6 - 9").should(eq())
  end
  it('Takes a sentence regardless of syntax (within reason) and returns correct value') do
    calc("wHat IS 5.3-9").should(eq())
    calc("what is 0 + 5?").should(eq())
    calc("what's (9+9)").should(eq())
  end
end
