require('find_and_replace')
require('rspec')
require('pry')

describe('#find_and_replace') do
  it("if input is not match then output is not changed")do
    expect(("Hello world").swapWord("by", "universe")).to(eq("Hello world"))
  end
  it("check for one word to replace with another word")do
    expect(("Hello").swapWord("Hello", "Hi")).to(eq("Hi"))
  end
  it("check for a word with in a sentence") do
    expect(("Hello world").swapWord("world", "universe")).to(eq("Hello universe"))
  end
  it("check for a word multiple times with in a sentence") do
    expect(("world world world").swapWord("world", "universe")).to(eq("universe universe universe"))
  end
  it("check for a word with in a word") do
    expect(("catherdal").swapWord("cat", "dog")).to(eq("dogherdal"))
  end
end
