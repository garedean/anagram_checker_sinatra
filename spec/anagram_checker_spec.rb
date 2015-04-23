require('rspec')
require('anagram_checker')

describe('String#get_anagrams') do
  it('return an error message if there are no anagrams') do
    expect(("a").get_anagrams("b", "c", "d")).to(eql([]))
  end

  it('return an anagram when one word is input') do
    expect(("cat").get_anagrams("act")).to(eql(["cat"]))
  end

  it('return multiple anagrams when three words are inputted.') do
    expect(("cat dog bear").get_anagrams("cta", "dgo", "brea")).to(eql(["cat", "dog", "bear"]))
  end
end
