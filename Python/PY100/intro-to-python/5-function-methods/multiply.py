def multiply(num1, num2):
    return num1 * num2


first_number = float(input("What is the first number? "))
second_number = float(input("What is the second number? "))

product = multiply(first_number, second_number)
print(f"{first_number} * {second_number} = {product}")
