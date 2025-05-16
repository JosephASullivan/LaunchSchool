def greet(language_code):
    match language_code:
        case "en":
            return "Hi!"
        case "fr":
            return "Salut!"
        case "de":
            return "Hallo!"


def extract_region(locale):
    return locale.split("_")[1].split(".")[0]


def extract_language(locale):
    return locale[0:2]


def local_greet(locale):
    language_code = extract_language(locale)
    region_code = extract_region(locale)

    match (language_code, region_code):
        case ("en", "US"):
            return "Yo"
        case ("en", "GB"):
            return "Toodle-pip"
        case ("en", "AU"):
            return "G'day mate"
        case _:
            return greet(language_code)


print(local_greet("en_US.UTF-8"))  # Hey!
print(local_greet("en_GB.UTF-8"))  # Hello!
print(local_greet("en_AU.UTF-8"))  # Howdy!
print(local_greet("fr_FR.UTF-8"))  # Howdy!
