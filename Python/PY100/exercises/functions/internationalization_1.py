def greet(language_code):
    match language_code:
        case "en":
            return "Hi!"
        case "fr":
            return "Salut!"
        case "de":
            return "Hallo!"


print(greet("en"))
print(greet("fr"))
print(greet("de"))
