#for CSV parsing
import csv
from math import log2

class TreeNode:
   def __init__(self):
      self.children = {}
      self.value = ""

def process_csv(file_name):
   data = []
   with open(file_name, 'r') as some_file:
      csv_file = csv.reader(some_file, 
                            delimiter=',', 
                            quotechar='"'
                            )
      for row in csv_file:
         data.append(row)
      return data

def calculate_entropy(outcome_levels):
   denominator = 0.0
   for key in outcome_levels:
      denominator += outcome_levels[key]
   
   entropy = 0.0
   for key in outcome_levels:
      ratio = outcome_levels[key] / denominator
      logged = log2(ratio)
      entropy += -ratio * logged
   return entropy

def build_frequency_distribution(sequence):
   distribution = {}
   for item in sequence:
      if not item in distribution:
         distribution[item] = 0
      distribution[item] += 1
   return distribution

def get_observations(matrix, column):
   result = []
   for i in range(len(matrix)):
      result.append(matrix[i][column])
   return result

def reduce_matrix(matrix, column, predictor):
   result = []
   for i in range(len(matrix)):
      if matrix[i][column] == predictor:
         result.append(matrix[i])
   return result

def find_max_gain(matrix, outcome_column, entropy):
   if len(matrix) == 0:
      return -1
   
   information_gain = []
   for column in range(len(matrix[0])):
      if column == outcome_column:
         information_gain.append(-1)
         continue
      observations = get_observations(matrix, column)
      observation_levels = build_frequency_distribution(observations)
      local_entropy = 0.0
      for level in observation_levels:
         reduced_matrix = reduce_matrix(matrix, column, level)
         reduced_observations = get_observations(reduced_matrix, outcome_column)
         local_entropy += observation_levels[level] / len(observations) * calculate_entropy(build_frequency_distribution(reduced_observations))
      information_gain.append(entropy - local_entropy)
   
   most_gain = 0
   for i in range(1, len(information_gain)):
      if information_gain[i] > information_gain[most_gain]:
         most_gain = i
   return most_gain

def build_tree(matrix, predictors, outcome_column):
   observations = get_observations(matrix, outcome_column)
   entropy = calculate_entropy(build_frequency_distribution(observations))
   if(entropy < 0.01):
      node = TreeNode()
      node.value = matrix[0][outcome_column]
      return node
   
   col = find_max_gain(matrix, outcome_column, entropy)
   node = TreeNode()
   node.value = predictors[col]

   selected_observations = get_observations(matrix, col)
   selected_levels = build_frequency_distribution(selected_observations)
   for level in selected_levels:
      reduced_matrix = reduce_matrix(matrix, col, level)
      node.children[level] = build_tree(reduced_matrix, predictors, outcome_column)
   return node

#option 2
def write_tree(root, my_file):
   #print(len(root.children))
   my_file.write("|" + str(len(root.children)))
   if len(root.children) != 0:
      #my_file.write("Root value: " + root.value)
      #my_file.write("|" + root.value + "\n")
      my_file.write("\n")
      #print(len(root.children))
      for x in root.children:
         my_file.write(x)
         my_file.write('|' + root.children[x].value)
         write_tree(root.children[x], my_file)
   else:
      my_file.write("\n")
   return

#option 2 helper
def write_tree_2_file(root):
    my_file = open('written.txt', 'wt')
    my_file.write("NULL" + "|" + root.value)
    write_tree(root, my_file)
    my_file.close()
    return

def make_guess(my_file, outcome, out_file):
   result = process_csv(my_file)
   header = result[0]
   result = result[1:]
   root = build_tree(result, header, outcome)
   for row in result:
      row.append(guesser(row, root))

   header.append("Guess")
   _file = open(out_file, 'wt')
   count = 0;
   for x in header:
      _file.write(x)
      count += 1
      if count < len(header):
         _file.write(',')
   _file.write("\n")
   count = 0;
   for x in result:
      for y in x:
         _file.write(y)
         count += 1
         if count < len(x):
            _file.write(',')
         else:
            count = 0
      _file.write("\n")
   _file.close()
   #print(result)
   return

def guesser(row, root):
   for item in row:
      if item in root.children:
         if root.children[item].value == "No":
            return root.children[item].value
         elif root.children[item].value == "Yes":
            return root.children[item].value
         else:
            return guesser(row, root.children[item])


def main():
   option = 0
   while int(option) < 5:
      option = input("Select an option: 1-4, all numbers greater than 4 end program")
      if int(option) == 1:
         sub_option = input("enter a file to be read:")
         result = process_csv(sub_option)
         header = result[0]
         result = result[1:]
         sub_option = input("enter the outcome variable as the number of the positon of the header") 
         root = build_tree(result, header, int(sub_option) -1)
         
      if int(option) == 2:
         print("your information is being saved to written.txt")
         write_tree_2_file(root)

      if int(option) == 3:
         sub_option = input("enter a file to be read:")
         sub_option2 = input("enter the outcome variable as the number of the positon of the header")
         sub_option3 = input("enter the name of the file to be outputted to")
         make_guess(sub_option, int(sub_option2) - 1, sub_option3)

      if int(option) == 4:
         print("This option is coming in a later patch update")
         continue

   print("done")

if __name__ == '__main__':
   main()
