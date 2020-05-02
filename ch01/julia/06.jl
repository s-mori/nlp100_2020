function n_gram(n, text)
  list = []

  for idx in 1:(length(text) - n + 1)
    push!(list, text[idx:(idx + n - 1)])
  end

  return list
end

str1 = "paraparaparadise"
str2 = "paragraph"

x = n_gram(2, str1)
y = n_gram(2, str2)

println("和集合: ", union(x, y))
println("積集合: ", intersect(x, y))
println("差集合: ", setdiff(x, y))
println("'se'がXに含まれるか: ", in("se", x))
println("'se'がYに含まれるか: ", in("se", y))
