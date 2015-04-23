class String
  define_method(:sort_word) do
    self.downcase.chars.sort.join
  end

  define_method(:get_anagrams) do |arg1 = nil, arg2 = nil, arg3 = nil|
    args = [arg1, arg2, arg3]
    sorted_args = []

    args.each do |arg|
      unless arg.nil?
        sorted_args.push(arg.sort_word)
      end
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

    anagrams

  end
end
