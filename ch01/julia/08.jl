function cipher(text)
  replaced_text = ""
  
  for str in text
    if(occursin(r"[a-z]", string(str)))
      replaced_text *= Char(219 - Int(str))
    else
      replaced_text *= str
    end
  end

  return replaced_text
end

print("Enter text: ")
input_text = chomp(readline())

encoded_text = cipher(input_text)
println("暗号化: ", encoded_text)
println("復号化: ", cipher(encoded_text))
