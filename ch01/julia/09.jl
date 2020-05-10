using Random

function typoglycemia(text)
  split_text = split(text, " ")
  text_array = []

  for idx in 1:length(split_text)
    push!(text_array, shuffle_text(split_text[idx]))
  end

  return join(text_array, " ")
end

function shuffle_text(text)
  if length(text) <= 4
    return text
  end
  arr = []

  push!(arr, text[1])

  shuffle_text = shuffle(split(text[2:(length(text)-1)], ""))
  append!(arr, shuffle_text)

  push!(arr, text[end])

  return join(arr)
end

print("Enter text: ")
input_text = chomp(readline())
println(typoglycemia(input_text))
