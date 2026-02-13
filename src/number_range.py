def categorize(num, min, max):
    if min < num < max:
        return "True" 
    elif num == min or num == max:
        return "True"
    else:
        return "False"