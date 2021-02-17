def convert(number):
    """Return a string of sounds depending on an input number"""
    out = ""
    if number % 3 == 0:
        out = "Pling"
    if number % 5 == 0:
        out = out + "Plang"
    if number % 7 == 0:
        out = out + "Plong"
    if out == "":
        out = str(number)
    return out
