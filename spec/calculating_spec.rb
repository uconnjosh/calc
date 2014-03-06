require ('rspec')
require ('calculating')

describe('calc') do
  it('Takes a sentence command and finds a sum') do  
    calc("What is 5 plus 4").should(eq(9))
  end
  it('Takes a sentence and find correct val for sub, mult, div') do
    calc("What is 5 divided by 4").should(eq(1.25))   
    calc("What is 6 times 9").should(eq(54))
    calc("What is 6 minus 9").should(eq(-3))
  end
  it('Takes a sentence regardless of syntax (within reason) and returns correct value') do
    calc("wHat IS 5.3 minus 9").should(eq(-3.70))
    calc("what is 0 plus 5?").should(eq(5))
    calc("what's 9 plus 9").should(eq(18))
  end
  it('Does powers of when called for') do
    calc("What is 2 to the 3rd power").should(eq(8))
  end
end

