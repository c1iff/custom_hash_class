class Hashtester
  define_method(:initialize) do
    @key = []
    @value = []
  end

  define_method(:store) do |key, value|
    @key.push(key)
    @value.push(value)
  end

  define_method(:fetch) do |input|
    index = @key.index(input)
    @value[index]
  end
end
