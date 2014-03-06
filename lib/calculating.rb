def calc(string)
  eng_eq = string.split(" ")
  token_dict = {"plus" => "+"}

  math_eq = []
  eng_eq.each do |token|
    if token.downcase == "what" || token.downcase == "is"

    elsif token_dict.has_key?(token)
      math_eq << token_dict[token]
    else
      math_eq << token
    end
  end

  eval(math_eq.join(""))
end

print calc("What is 5 plus 4")
