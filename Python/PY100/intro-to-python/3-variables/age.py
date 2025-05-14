AGE = 10
print("You are " + str(AGE) + " years old!")


def age_calculator(years):
    return "In " + str(years) + " years you'll be " + str(AGE + years)


print(age_calculator(10))
print(age_calculator(20))
print(age_calculator(30))
print(age_calculator(40))
