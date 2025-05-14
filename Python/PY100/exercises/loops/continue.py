cities = [
    "Istanbul",
    "Los Angeles",
    "Tokyo",
    None,
    "Vienna",
    None,
    "London",
    "Beijing",
    None,
]

for city in cities:
    if not city:
        continue

    print(len(city))
