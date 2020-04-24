str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
arr = split.(str, " ")
length_list = []

for i = 1:length(arr)
  push!(length_list,length(arr[i]))
end

println(length_list)
