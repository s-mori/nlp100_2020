function n_gram(n, text)
  list = []

  for idx in 1:(length(text) - n + 1)
    push!(list, text[idx:(idx + n - 1)])
  end

  return list
end

str = "I am an NLPer"
println(n_gram(1, split(str, " ")))
println(n_gram(1, str))
