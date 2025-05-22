numbers = {
    "high": 100,
    "medium": 50,
    "low": 25,
}

half_numbers = []

for key in numbers:
    half_numbers.append(numbers[key] // 2)

print(half_numbers)
