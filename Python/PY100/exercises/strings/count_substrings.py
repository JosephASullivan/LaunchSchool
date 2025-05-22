def count_substrings(str, sub):
    return str.count(sub)


print(count_substrings("lemon lemon lemon", "lemon"))  # 3
print(count_substrings("laLAlaLA", "la"))  # 2
print(count_substrings("launch", "uno"))  # 0
