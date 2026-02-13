def categorize(num, min, max):
    if min < num < max:
        return "In range" 
    elif num == min or num == max:
        return "On limit"
    else:
        return "Not in range"