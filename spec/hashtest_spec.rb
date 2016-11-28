require('rspec')
require('hashtest')

describe(Hashtester) do
  describe('#store') do
    it('stores key and value') do
      demo_hash = Hashtester.new()
      demo_hash.store("test", "output")
      expect(demo_hash.fetch("test")).to(eq("output"))
    end
  end
end
