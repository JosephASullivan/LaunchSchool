destinations = [
    "Prague",
    "London",
    "Sydney",
    "Belfast",
    "Rome",
    "Aruba",
    "Paris",
    "Bora Bora",
    "Barcelona",
    "Rio de Janeiro",
    "Marrakesh",
    "New York City",
]


def is_included(item, lst):
    for entry in lst:
        if entry == item:
            return True

    return False


print(is_included("Paris", destinations))
print(is_included("Neptune", destinations))
