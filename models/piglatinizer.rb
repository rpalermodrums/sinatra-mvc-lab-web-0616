class PigLatinizer

  def piglatinize(word)
    if word[0] =~ /[aeiou]/i
      "#{word}way"
    elsif word[0] =~ /[^aeiou]/i && word[1] =~ /[^aeiou]/i && word[2] =~ /[^aeiou]/i
      "#{word[3..-1]}#{word[0..2]}ay"
    elsif word[0] =~ /[^aeiou]/i && word[1] =~ /[^aeiou]/i
      "#{word[2..-1]}#{word[0..1]}ay"
    else
      "#{word[1..-1]}#{word[0]}ay"
    end
  end

  def to_pig_latin(words)
    words.split.map { |word| piglatinize(word) }.join(" ")
  end
end
