def equation_separator(string)
  questions = string.split("?")
  questions.each { |question| puts "The answer to '#{question}' is: #{calc(question)}" }
end


def calc(string)
  eng_eq = string.split(" ")
  token_dict = {"plus" => "+","minus" => "-", "times" => "*", "divided" => "/",
                "to" => "**"}

  math_eq = []
  eng_eq.each do |token|
    if token.downcase == "what" || token.downcase == "is" ||
       token.downcase == "by"  || token.downcase == "what's" ||
       token.downcase == "the" || token.downcase == "power" ||
       token.downcase == "of"

    elsif token_dict.has_key?(token)
      math_eq << token_dict[token]
    else
      math_eq << token.to_f
    end
  end

  eval(math_eq.join(" "))
end

equation_separator("What is 5 plus 3?What is 5 times 3?")
