# Christopher Velazquez
# 4/17/19

import csv

def process_ssv(file_name):
   data = []
   with open(file_name, 'r') as some_file:
      csv_file = csv.reader(some_file, 
                            delimiter=' ',
                            quotechar='"'
                            )
      for row in csv_file:
         data.append(row)
      return data

def process_tsv(file_name):
   data = []
   with open(file_name, 'r') as some_file:
      csv_file = csv.reader(some_file, 
                            delimiter='\n', 
                            quotechar='"'
                            )
      for row in csv_file:
         data.append(row)
      return data
   
def stupid_solution(big_list):
   while len(big_list) > 1:
      big_list[0].extend(big_list[1])
      del big_list[1]
      return big_list


def calculate_edit_distance(first, second):
    matrix = []

    # construct matrix
    for i in range(len(first) + 1):
        matrix.append([])
        for j in range(len(second) + 1):
            matrix[i].append(0)

    # fill in first row
    for i in range(len(matrix[0])):
        matrix[0][i] = i

    # fill in first column
    for i in range(len(matrix)):
        matrix[i][0] = i

    # compute rest of matrix
    for i in range(1, len(matrix)):
        for j in range(1, len(matrix[i])):

            top_cost = matrix[i - 1][j] + 1
            left_cost = matrix[i][j - 1] + 1
            diagonal_cost = matrix[i - 1][j - 1]

            # add 1 to diagonal if chars don't match
            if(first[i - 1] != second[j - 1]):
                diagonal_cost += 1

            best_choice = min(top_cost, left_cost, diagonal_cost)
            matrix[i][j] = best_choice
    return matrix[len(matrix) - 1][len(matrix[0]) - 1]

#things still need to be done:
# if time permits: if gramatically correct, fix.... I dont think i'll do that.xs 

if __name__ == '__main__':
    #processes Space seperated values
    print("Please enter a file to be corrected:")
    some_file = input()
    print("Please enter the file you want this to be outputted to:")
    some_output_file = input()
    data = process_ssv(some_file)
    #print(type(data[0]))
    #processes New line seperated Values
    data2 = process_tsv("words.txt")
    #print(data2)
    #edit perm_list is no longer a good variable name. At the time i thought it would be
    #however perm_list was getting too big, and needs to be cleared after every iteration 
    perm_list = []
    per_word = []
    counter = 0
   #this funciton made in a hurry, when wanting to turn in a long time ago
    if len(data) > 2:
       data = stupid_solution(data)
    # selects each word in the users file
    for words in data:
       for word in words: 
           # if the word is spelled incorrectly according to the 'dictionary'
           if word.split(' ') not in data2:
               print("unknown word: " + word)
               #selects each word from 'dictionary'
               #does a edit distance calculation from word to words in dictionary
               #will try to find 10 lowest values
               for word2 in data2:
                   #print(word, 'and', word2[0])
                   temp_val = calculate_edit_distance(word, word2[0])
                   perm_list.append([temp_val, word2])

               #while counter < len(perm_list):
               #print(len(perm_list))
               #print(perm_list)
               perm_list.sort()
               #print(len(perm_list))
               #print(perm_list)

               print("select one of the options:")
               print("1:")
               print("none of the words below are correct")
         #test to see just if it outputs anything
         #I got this to work, but holy hell this is code cancer, there has to be a better way to code this
               while counter < 10:
                  for x in perm_list:
                     if counter < 10:
                        print(str(counter + 2) + ':')
                        print(x[1])
                        #apparently we have to save the info per word UGH
                        per_word.append(x)
                        counter += 1
                        counter2 = counter
                        print(data)
                     #you turned this into a while loop right before bed, from an if statement
                     #3 am chris may not be the most reliable, check his code in morning
                     while counter2 >= 10:
                        print("Enter a selection: ")
                        user_input = int(input())
                        if user_input == 1:
                           print("Enter what the word should have been:")
                           user_input2 = input()
                           indexed = data[0].index(word)
                           data[0].insert(indexed, user_input2)
                           data[0].remove(word)
                           #user_input 2 has to be a list when appeneded to data2 as it is a list of lists
                           user_input2 = user_input2.split(' ')
                           data2.append(user_input2)
                           #print(len(data))
                           
                           #makes word selected top of list for per_word, removes the last element
                           del per_word[-1]
                           temp_val = calculate_edit_distance(word, user_input2[0])
                           perm_list.append([temp_val, user_input2[0]])
                           # take a better look at this after class
                           per_word.insert(0, [temp_val, user_input2]) 
                           counter2 = 0
                           

                        if (user_input > 1) and (user_input < 12):
                           user_input -= 2
                           indexed = data[0].index(word)
                           data[0].insert(indexed, perm_list[user_input][1][0])
                           data[0].remove(word)

                           #makes word selected top of list for per_word, removes the last element
                           del per_word[-1]
                           per_word.insert(0, perm_list[user_input])
                           #print(per_word)
                           counter2 = 0
                           
                           
                        else:
                           continue
                        #untested before class on 4/24/19
                        #Seems to work, further testing needed
                        word_file_name = word + '.dat'
                        with open(word_file_name, 'w') as word_file:
                           for x in per_word:
                              print(x, word_file_name, file=word_file)

                        #ouputting all this stuff
                        #will strip the grammar as is, no '.?!" characters
                        with open(some_output_file, 'w') as word_file:
                           for x in data[0]:
                              print(x, end =" " , file=word_file)

                        #updates the dictionary to add whatever new words may have been added
                        with open("words.txt", 'w') as word_file:
                           for x in data2:
                              print(x[0], file=word_file)
                              
                        
                        break
               counter = 0
               perm_list.clear()
               per_word.clear()
                   
      ##                for perm_val in perm_list:
      ##                    if perm_val < temp_val:
      ##                        perm_list.update(perm_val) = temp_val
      ##                        perm_words.update() = word2 
                           

