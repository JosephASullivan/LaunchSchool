obj = "ABcd"  # Reassignment
obj.upper()  # Neither
obj = obj.lower()  # Reassignment
print(len(obj))  # Neither
obj = list(obj)  # Reassignment
obj.pop()  # Mutation
obj[2] = "X"  # Mutation
obj.sort()  # Mutation
set(obj)  # Neither
obj = tuple(obj)  # Reassignment
