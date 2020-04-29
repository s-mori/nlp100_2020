str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
replace_str = replace(str, "." => "")
arr = split(replace_str, " ")
list = []

for i = 1:length(arr)
  if(in(i, [1, 5, 6, 7, 8, 9, 15, 16, 19]))
    push!(list, [i, arr[i][1]])
  else
    push!(list, [i, arr[i][1:2]])
  end
end

println(Dict(list))
