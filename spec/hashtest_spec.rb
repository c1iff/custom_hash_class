require('rspec')
require('hashtest')

describe(Hashtester) do
  describe('#fetch') do
    it('stores key and value') do
      demo_hash = Hashtester.new()
      demo_hash.store("test", "output")
      expect(demo_hash.fetch("test")).to(eq("output"))
    end
  end

  describe('#fetch') do
    it('fetches key value') do
      demo_hash = Hashtester.new()
      demo_hash.store("test", "output")
      demo_hash.store("test again", "output again")
      expect(demo_hash.fetch("test again")).to(eq("output again"))
    end
  end

  describe('#has_key?') do
    it('return false if the key is not present in the hash') do
      demo_hash = Hashtester.new()
      demo_hash.store("test", "output")
      expect(demo_hash.has_key?("test false")).to(eq(false))
    end
  end

end
