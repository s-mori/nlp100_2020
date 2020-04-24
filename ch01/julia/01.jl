str = "パタトクカシーー"

function split_text(s)
  result_text = ""
  index = firstindex(s)
  while index <= lastindex(s)
    if isodd(index)
      result_text *= s[index]
    end
    index = nextind(s, index)
  end
  println(result_text)
end

split_text(str)
