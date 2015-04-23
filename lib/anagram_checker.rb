class String
  define_method(:order_word) do
    self.downcase().chars().sort().join()
  end

  define_method(:get_anagrams) do |arg1 = nil, arg2 = nil, arg3 = nil|
    sorted_args = []

    unless arg1.nil?
      sorted_args.push(arg1.downcase().chars().sort().join())
    end
    unless arg2.nil?
      sorted_args.push(arg2.downcase().chars().sort().join())
    end
    unless arg3.nil?
      sorted_args.push(arg3.downcase().chars().sort().join())
    end

    # original phrase
    original_phrase_words = self.downcase().split()

    anagrams = []

    original_phrase_words.each do |word|
      sorted_word = word.chars().sort().join()

      if sorted_args.include?(sorted_word)
        anagrams.push(word)
      end
    end
    if anagrams.empty?()
      "Error: there are no anagrams."
    else
    anagrams.join(", ")
    end
  end
end
