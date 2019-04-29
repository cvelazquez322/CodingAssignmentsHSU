# Christopher Velazquez
# CS232-01-civ5
# 2/14/18

# Problem 1
# int int int -> int
# expects three integers, one to be the mutiple, the last two to be the range
# returns the values that are mutiples within the range
# SIDE-EFFECT: prints the multiples to the screen.
def multiples_in_range(int_1, int_2, int_3):
    var1 = 0
    for x in range (int_2 + 1, int_3):
        if (x % int_1 == 0):
            print (x)
            var1 += 1
    return var1

# Problem 2
# float -> char
# expects a numeric value
# returns the letter grade
# SIDE-EFFECT: prints the grade as well
def letter_grade(num):
    if num >= 90:
        print ("A")
        char1= "A"
    elif num >= 80:
        print ("B")
        char2= "B"
    elif num >= 70:
        print ("C")
        char1= "C"
    elif num >= 60:
        print ("D")
        char1= "D"
    else:
        print ("F")
        char1= "F"
    return char1

# Problem 3
# any type -> depends on type
# If passed an integer as its argument, returns a value that is 1 more than that integer*
#If passed a float, returns a value that is exactly 0.1 more than that floating point number
# If passed a string, returns that string with an exclamation point appended
# If passed a boolean, returns the opposite boolean valueF
# For an argument of any other type (such as a molecular data type like a list or tuple), it should simply return the same value that was passed to it.
def bump_it(arg):
    if type(arg) == int:
        arg += 1
    elif type(arg) == float:
        arg = arg + 0.1
    elif type(arg) == str:
        arg= arg + "!"
    elif type(arg) == bool:
        arg = (not arg)
    return arg

# Problem 4
# string -> string
# All returned values will have the first letter of the string capitalized
# If the length of the name passed is less than 5 letters, the name will not be "nickname-ized"
# If the length of the name passed is 5 or more letters, it will be "nickname-ized" by taking the first 5 letters of the name, discarding the rest, and
# If the 5th letter is a y, strip off the y
# If the 5th letter is not a y, append a y to the nickname

def my_nickname(the_string):
    a_string = the_string.capitalize()
    if len(the_string) < 5:
       return a_string
    else:
       a_string = a_string[0:5]
    if a_string[4] == 'y':
       return a_string[0:4]
    else:
       return a_string + "y"

# Problem 5
# string -> string
# If the argument is in all-uppercase, it should return a version of the argument in all-lowercase.
# If the argument is in all-lowercase, it should return a version of the argument in all-uppercase.
# If the argument is neither all-uppercase nor all-lowercase, look at the first character.
# If the first character is uppercase, return a string where only the first letter is changed to lowercase, and the rest are returned unchanged.
# If the first character is lowercase, return a string where only the first letter is changed to uppercase, and the rest are returned unchanged.
def flip_case(the_string):
    if the_string.isupper():
        a_string = the_string.lower()
    elif the_string.islower():
        a_string = the_string.upper()
    elif the_string[0] == the_string[0].capitalize():
        a_string = the_string[0].lower() + the_string[1: len(the_string)]
    else:
        a_string = the_string[0].upper() + the_string [1: len(the_string)]
    return a_string

# Problem 6
# int -> int
# takes an int
# returns the fibinocci sequence to that int
def fibonacci_list(integer):
    temp =0
    for x in range (0, integer +1):
        temp += x
    return temp
    











