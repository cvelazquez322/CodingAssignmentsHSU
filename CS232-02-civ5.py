# CS-232-03-civ5.py
# Christopher Velazquez
# Last modified: 2/21/18

# Problem 1

# string -> string
# expects a word
# returns the word in pig latin

def pig_latin(word):
    lower_it = word.lower()
    if lower_it[:1] == 'a' or lower_it[:1] =='e' or lower_it[:1] == 'i' or lower_it[:1] == 'o' or lower_it[:1] == 'u':
        return word + "-ay"
    elif lower_it[0] not in ('a', 'e', 'i', 'o', 'u') and lower_it[1] is 'h':
        return word[2:] + "-" + word[0:2]+ "ay"
    else:
        return word[1:] + "-" + word[0] + "ay"

# problem 2

# list -> list
# expects a list of strings
# returns that list of strings after it is ran through the pig_latin function
def pig_list(a_list):
    new_list = []
    for x in a_list:
        new_list.append(pig_latin(x))
    return new_list

# problem 3
# string -> dictionary
# expects a string
# returns a dictionary with the key being lower cased letter and its value being equal to how often that letter appeared

def letter_freq(the_string):
    new_string = the_string.lower()
    letter_counter = {}
    for x in new_string:
        letter_counter [x] = 0
    for x in new_string:
        letter_counter[x] +=1
    return letter_counter

# NOT A PROBLEM FOR HOMEWORK
# int -> char
# expects a num
# returns back a x for that many ints
# designed for use in problem 4

def x_for_int(num):
    var1 = '' 
    for x in range (0, num):
        var1 += 'x'
    return var1


# problem 4
# dict -> nothing
# expects a dict of letter frequencies
# returns nothing
# SIDE-EFFECT: returns a bar chart of the characters


def freq_bar_chart(dict_freq):
    print("Number of times a letter appears:")
    for x in sorted(dict_freq):
        print(x, " - ", x_for_int(dict_freq[x]))
        
    
# problem from lab 4
def max_coordinate_value(a_dict, an_int):
    max_value = 0
    for i in a_dict:
        if a_dict[i][an_int] > max_value:
            max_value = a_dict[i][an_int]
    return max_value



test_dict = {'a': (4,3), 'b': (1, 2), 'c': (5,1)}
# Problem 5
# dict -> list
# expects a dict
# returns a list that forms a graph
def plot_points(a_dict):
    max_x = max_coordinate_value(a_dict,0)
    max_y = max_coordinate_value(a_dict,1)
    list_length = [ ]
    list_height = [ ]
    pos_x =0
    pos_y = 0
    for x in range(0, max_x):
        list_length += ['.']
        print(list_length)
    for x in range(0, max_y):
        list_height += list_length + [ ]
        print (list_height)
    for x in a_dict:
        print(x)
        
        































