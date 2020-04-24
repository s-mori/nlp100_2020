p_str = "パトカー"
t_str = "タクシー"

function mix_text(a_text, b_text)
  str = ""
  index = firstindex(a_text)
  while index <= lastindex(a_text)
    str *= a_text[index] * b_text[index]
    index = nextind(a_text, index)
  end

  println(str)
end

mix_text(p_str, t_str)
