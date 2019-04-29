# CS232-04-civ5.py
# Christopher Velazquez
# Last modified 4/18/18
import os, sys
import random
import collections
NUM_SIDES = 6    # Number of sides on each die
NUM_DICE = 5     # Number of dice in the game
NUM_ROLLS = 3    # Number of rolls for each test
NUM_TESTS = 1000 # Number of tests to perform

class die():
    def __init__ (self, number_of_sides):
        self.sides = number_of_sides
        self.die_value = 0
    def roll(self):
        self.die_value = random.randint(1,self.sides)
    def value(self):
        return(self.die_value)



# This next code is not original work, I borrowed it from stackoverflow.com
# it does nothing except stops text from being outputted so that I can run
# main without being hindered by the side-effects of  play_yahtzee(die_list)
# otherwise I would have to wait for 3000 lines of code to be outputted.
class HiddenPrints:
    def __enter__(self):
        self._original_stdout = sys.stdout
        sys.stdout = None

    def __exit__(self, exc_type, exc_val, exc_tb):
        sys.stdout = self._original_stdout    
    
# list of Die objects -> boolean
# expects a list of Die objects
# returns True if all values of the Die objects match (a "Yahtzee")
#     returns False otherwise
def is_yahtzee(the_dice):
    result = True
    for i in range(1, NUM_DICE):
        if the_dice[i].value() != the_dice[i-1].value():
            result = False
    return result

# list of Die objects -> nothing
# expects a list of Die objects
# returns nothing
# side effect: prints to screen the values on the dice
def print_dice(the_dice):
    print("The dice values are: {0}".format([i.value() for i in the_dice]))
    
# list of Die objects -> int
# expects a list of Die objects
#    examines the values of the dice, and determines which value
#    is most common
# returns that most common value found
# Examples: the_dice values of [1, 5, 4, 5, 5] will return 5
#           the_dice values of [2, 6, 2, 6, 4] will return 2 or 6
def best_value_to_keep(the_dice):
    # Create a counter dictionary of the values in the_dice[]
    dice_counter = collections.Counter(i.value() for i in the_dice)
    # Look for the greatest number of dice that match each other
    how_many_dice_match = max(dice_counter.values())
    # Find which value on the dice (that is, which key in the counter)
    # corresponds to how_many_dice_match (if a tie, either value is OK)
    for i in list(dice_counter.keys()):
        if dice_counter[i] == how_many_dice_match:
            value_to_keep = i
        # value_to_keep is now the most commonly found value on the dice
    return value_to_keep
        # *************** play_yahtzee code goes here ********************
        #list of Die objects -> boolean
        # expects a list of Die objects
        #     Rolls the dice NUM_ROLLS times to try to get a "Yahtzee"
        #     A Yahtzee is when all the dice have the same value
        #     returns True if a Yahtzee occurs, or False otherwise
        #
        # side effect: prints to the screen the values of the dice
        #     (by calling print_dice(the_dice)) after each roll,
        #     and a single-line "Yahtzee" or "No Yahtzee" message at the end
        
def play_yahtzee(the_list):
    for x in the_list:
        x.roll()
    new_list = the_list
    counter = 0
    global NUM_ROLLS
    while counter < NUM_ROLLS:
        for x in new_list:
            if x.value() != best_value_to_keep(new_list):
                x.roll()
        print_dice(new_list)
        if is_yahtzee(new_list):
            print("Yahtzee!")
            return True
        else:
            print("Not Yahtzee.")
        counter+=1

                
            



        # PART II - Writing the play_yahtzee function goes here

        # *************** end play_yahtzee code **************************
        #*** The "main" code to run play_yahtzee() NUM_TIMES times goes here ***

        # PART III - Code to run play_yahtzee multiple times goes here
        # Now, write a loop to call play_yahtzee(my_dice) NUM_TIMES times.
        # Use a local variable to keep track of the
        # number of Yahtzees that occur, and compute the percentage of
        # tests the resulted in a Yahtzee.  Print the number of tests,
        # the number of Yahtzees, and the percentage of success
        # to the screen in an easy to read and understand manner

def main():    
    a = die(6)
    b = die(6)
    c = die(6)
    d = die(6)
    e = die(6)
    f = [a, b, c, d, e]
    counter = 0
    boolean_val = False
    yat_counter = 0
    while counter < NUM_TESTS:
        with HiddenPrints():
            boolean_val = play_yahtzee(f)
        if boolean_val:
            yat_counter += 1
        counter +=1
    print("There were {} yahtzees.".format(yat_counter))    
    print("There were {} tests.".format(NUM_TESTS))
    print( "the percentage of times there has been a succeful yahtzee is {}".format(yat_counter/NUM_TESTS))





















        
